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

{ #category : #strategy }
FamixPWBModel >> allModelDeadMethods [
	^ self privateState
		attributeAt: #allModelDeadMethods
		ifAbsentPut: [ self resurrectMethods.
			self allMethods asSet select: #isPWBDead ]
]

{ #category : #strategy }
FamixPWBModel >> initializeMethodsToDeath [
	((self allMethods asSet reject: #isNoisyMethod)
		reject: [ :m | 
			{FamixPWBEvent.
			FamixPWBTrigger} includes: m class ])
		do: [ :m | m isPWBDead: true ]
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
