Class {
	#name : #FamixPWBModel,
	#superclass : #MooseModel,
	#instVars : [
		'businessRuleFunctions'
	],
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

{ #category : #'as yet unclassified' }
FamixPWBModel >> allModelPWBUserObjects [
	^ self allWithType: FamixPWBUserObject
]

{ #category : #'as yet unclassified' }
FamixPWBModel >> cleanRootFolder [
	self rootFolder allDirectories
		select: [ :dir | dir basename = 'cleaned' ]
		thenDo: #deleteAll
]

{ #category : #api }
FamixPWBModel >> extractVariables: aCollectionOfPWBObjects [
	| variables |
	variables := aCollectionOfPWBObjects
		flatCollectAsSet:
			[ :each | each attributes select: [ :e | e accessingMethods isNotEmpty ] ].
	^ variables
]

{ #category : #'as yet unclassified' }
FamixPWBModel >> getBusinessRuleFunctions [
	businessRuleFunctions isEmptyOrNil
		ifTrue: [ businessRuleFunctions := (self
				selectIncomingInvocationMethodsUntilConvergence: (self extractVariables: (self allWithType: FamixPWBWindow)))
				groupedBy: #parentType ].
	^ businessRuleFunctions
]

{ #category : #'as yet unclassified' }
FamixPWBModel >> getBusinessRuleFunctionsFromToscaSenarios [
	| famixBehaviors |
	famixBehaviors := (self allWithType: FamixPWBFunction)
		, (self allWithType: FamixPWBSubRoutine)
		select: [ :each | each parentType isNotNil ].
	businessRuleFunctions
		ifNil: [ self
				setBusinessRuleFunctions:
					((MrlBehavior loadAll
						flatCollectAsSet: [ :aBehavior | 
							famixBehaviors
								select: [ :each | 
									each parentType name = aBehavior pwb_object
										and: [ each name = aBehavior behavior_name ] ] ])
						groupedBy: #parentType) ].
	^ businessRuleFunctions
]

{ #category : #'as yet unclassified' }
FamixPWBModel >> install [
	super install.
	self cleanRootFolder.
	"self resurrectMethods"
]

{ #category : #api }
FamixPWBModel >> selectIncomingInvocationMethodsUntilConvergence: aCollection [
	| methods stop |
	methods := ((aCollection
		flatCollectAsSet: [ :e | e accessingMethods ])
		reject: [ :e | e isPWBClass ]) asSet.
	stop := 0.
	[ stop = methods size ]
		whileFalse: [ stop := methods size.
			methods
				addAll: (methods flatCollectAsSet: [ :m | m invokedMethods ]) ].
	^ methods
		select:
			[ :behavioral | behavioral parentType isNotNil and: [ behavioral isFunction ] ]
]

{ #category : #'as yet unclassified' }
FamixPWBModel >> setBusinessRuleFunctions: aDictionary [
	businessRuleFunctions := aDictionary
]
