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

{ #category : #acccessing }
FamixPWBModel >> allModelPWBObjects [
	^ MooseGroup withAll: (self entities select: #isPWBClass)
]

{ #category : #acccessing }
FamixPWBModel >> allModelPWBUserObjects [
	^ self allWithType: FamixPWBUserObject
]

{ #category : #api }
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

{ #category : #initialization }
FamixPWBModel >> initDefaultPWBEntities [
	(FamixPWBUserObject named: 'userobject')
		mooseModel: self.

	(FamixPWBDataWindow named: 'datawindow')
		mooseModel: self.
]

{ #category : #initialization }
FamixPWBModel >> initialize [
	super initialize.
	self initDefaultPWBEntities
]

{ #category : #actions }
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
