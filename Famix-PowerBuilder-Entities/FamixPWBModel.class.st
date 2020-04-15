Class {
	#name : #FamixPWBModel,
	#superclass : #MooseModel,
	#category : #'Famix-PowerBuilder-Entities-Model'
}

{ #category : #accessing }
FamixPWBModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits')
]

{ #category : #meta }
FamixPWBModel class >> annotation [
	<FMClass: #FamixPWBModel super: #MooseModel>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
]

{ #category : #strategy }
FamixPWBModel >> allModelAliveMethods [
	^ self allMethods asSet select: [ :method | method isNotPWBDead ]
]

{ #category : #api }
FamixPWBModel >> allModelDeadMethodWithAliveStrategy [
	self killIncrementallyNonInvocatedMethods.
	^ self allMethods asSet select: [ :method | method isPWBDead ]
]

{ #category : #strategy }
FamixPWBModel >> allModelDeadMethods [
	^ self privateState
		attributeAt: #allModelDeadMethods
		ifAbsentPut: [ self resurrectMethods.
			self allMethods asSet select: #isPWBDead ]
]

{ #category : #initialization }
FamixPWBModel >> initializeMethodsToAlive [
	self allMethods asSet
		do: [ :method | 
			method isPWBDead
				ifTrue: [ method isPWBDead: false ] ]
]

{ #category : #strategy }
FamixPWBModel >> initializeMethodsToDeath [
	((self allMethods asSet reject: #isNoisyMethod)
		reject: [ :m | 
			{FamixPWBEvent.
			FamixPWBTrigger} includes: m class ])
		do: [ :m | m isPWBDead: true ]
]

{ #category : #actions }
FamixPWBModel >> install [
	super install.
	self resurrectMethods
]

{ #category : #api }
FamixPWBModel >> killIncrementallyNonInvocatedMethods [
	| defaultAlive deadMethods done |
	self initializeMethodsToAlive.
	defaultAlive := QueryDefaultAliveMethods runOn: self allMethods asSet.
	QueryDirectDeadMethods runOn: self allMethods asSet.
	deadMethods := self allMethods asSet
		select: [ :method | method isPWBDead ].
	done := false.
	[ done ]
		whileFalse: [ | modelDeadMethods |
			deadMethods
				do: [ :dead | 
					| potentialDead deadFounded |
					potentialDead := dead outgoingInvocationsCandidates
						reject: [ :meth | meth isPWBDead or: [ defaultAlive includes: meth ] ].
					deadFounded := potentialDead
						reject:
							[ :aMethod | aMethod incomingInvocationsSenders anySatisfy: #isNotPWBDead ].
					deadFounded
						ifNotEmpty: [ deadFounded do: [ :m | m isPWBDead: true ] ] ].
			modelDeadMethods := self allMethods asSet
				select: [ :method | method isPWBDead ].
			deadMethods = modelDeadMethods
				ifTrue: [ done := true ]
				ifFalse: [ deadMethods := modelDeadMethods ] ]
]

{ #category : #initialization }
FamixPWBModel >> resetDeathMethodState [
	self allMethods asSet do: [ :method | method isPWBDead: false ]
]

{ #category : #strategy }
FamixPWBModel >> resurrectMethods [
	| alive end |
	self initializeMethodsToDeath.
	end := false.
	alive := self allModelAliveMethods.
	[ end ]
		whileFalse: [ alive
				do: [ :each | 
					(each outgoingInvocationsCandidates reject: #isNotPWBDead)
						do: [ :toResurect | toResurect isPWBDead: false ] ].
			alive = self allModelAliveMethods
				ifTrue: [ end := true ]
				ifFalse: [ alive := self allModelAliveMethods ] ]
]
