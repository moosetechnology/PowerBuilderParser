"
An Intermediary Representation of an entity with a name

Instance variables:
- expectedFamixKinds, to help when creating a real FamixEntity for me
- owner, IREntity to which I belong (e.g. function for a local variable)
- famixEntity, constructed from me after call to #toFamix
- file + startPos + endPos, source anchor data: the file where the entity was found and the position in the file
"
Class {
	#name : #PWBIRNamedEntity,
	#superclass : #Object,
	#instVars : [
		'name',
		'owner',
		'famixEntity',
		'expectedFamixKinds',
		'file',
		'startPos',
		'endPos'
	],
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #mapping }
PWBIRNamedEntity class >> defaultFamixClasses [
	self subclassResponsibility

]

{ #category : #'instance creation' }
PWBIRNamedEntity class >> forFamixClass: aFamixClass [
	^(self irClassForFamixClass: aFamixClass)
		new
]

{ #category : #mapping }
PWBIRNamedEntity class >> irClassForFamixClass: aFamixClass [
	^(self allSubclasses
		detect: [ :sub | sub defaultFamixClasses includes: aFamixClass ]
		ifNone: [  self ]
	)
]

{ #category : #accessing }
PWBIRNamedEntity >> addDependency: anIREntity [
	self subclassResponsibility 
]

{ #category : #converting }
PWBIRNamedEntity >> classToFamix [
	^(expectedFamixKinds ifNil: [ self class defaultFamixClasses ])
		anyOne
]

{ #category : #accessing }
PWBIRNamedEntity >> endPos [
	^ endPos
]

{ #category : #accessing }
PWBIRNamedEntity >> endPos: anObject [
	endPos := anObject
]

{ #category : #accessing }
PWBIRNamedEntity >> expectedFamixKinds [
	^ expectedFamixKinds
]

{ #category : #accessing }
PWBIRNamedEntity >> expectedFamixKinds: aCollection [
	expectedFamixKinds := aCollection
]

{ #category : #accessing }
PWBIRNamedEntity >> famixEntity [
	^ famixEntity
]

{ #category : #accessing }
PWBIRNamedEntity >> famixEntity: anObject [
	^ famixEntity := anObject
]

{ #category : #accessing }
PWBIRNamedEntity >> file [
	^ file
]

{ #category : #accessing }
PWBIRNamedEntity >> file: anObject [
	file := anObject
]

{ #category : #testing }
PWBIRNamedEntity >> hasMatchingType: aClass [ 
	^self expectedFamixKinds isNotNil and: [self expectedFamixKinds includes: aClass]
]

{ #category : #testing }
PWBIRNamedEntity >> isBehavioural [
	^false
]

{ #category : #testing }
PWBIRNamedEntity >> isIREntity [
	^true
]

{ #category : #testing }
PWBIRNamedEntity >> isResolverReachable [
	^owner isNil
]

{ #category : #accessing }
PWBIRNamedEntity >> name [
	^ name
]

{ #category : #accessing }
PWBIRNamedEntity >> name: aString [
	name := aString
]

{ #category : #accessing }
PWBIRNamedEntity >> owner [
	^ owner
]

{ #category : #accessing }
PWBIRNamedEntity >> owner: anObject [
	owner := anObject
]

{ #category : #printing }
PWBIRNamedEntity >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPut: $( ;
		nextPutAll: name asString ;
		nextPut: $)
]

{ #category : #accessing }
PWBIRNamedEntity >> setExpectedFamixKindsToDefault [
	expectedFamixKinds := self class defaultFamixClasses
]

{ #category : #accessing }
PWBIRNamedEntity >> setSourceAnchorFrom: astNode [
	startPos := astNode startPosition.
	endPos := astNode stopPosition
]

{ #category : #accessing }
PWBIRNamedEntity >> setSourceAnchorFrom: astNode file: aFile [
	self setSourceAnchorFrom: astNode.
	self file: aFile
]

{ #category : #accessing }
PWBIRNamedEntity >> startPos [
	^ startPos
]

{ #category : #accessing }
PWBIRNamedEntity >> startPos: anObject [
	startPos := anObject
]

{ #category : #converting }
PWBIRNamedEntity >> toFamix: famixModel [
	famixEntity ifNotNil: [ ^famixEntity ].

	^famixEntity := self classToFamix new
		name: name ;
		mooseModel: famixModel ;
		isStub: (owner isNil) ;
		yourself.
]

{ #category : #converting }
PWBIRNamedEntity >> toFamix: famixModel class: aFamixClass [
	| concreteClass |
	famixEntity ifNotNil: [
		self
			verifyActualClasses: { famixEntity class }
			matchGivenClass: aFamixClass.
		^famixEntity ].

	concreteClass := self
		verifyActualClasses: (self expectedFamixKinds ifNil: [ self class defaultFamixClasses ])
		matchGivenClass: aFamixClass.

	^famixEntity := concreteClass new
		name: name ;
		mooseModel: famixModel ;
		isStub: (owner isNil) ;
		yourself.
]

{ #category : #converting }
PWBIRNamedEntity >> verifyActualClasses: aCollection matchGivenClass: aFamixClass [
	^aCollection
		detect: [ :class | class includesBehavior: aFamixClass ]
		ifNone: [  PWBIRWrongFamixClass signal:
			( aFamixClass name , ' does not match any of: ' , (', ' join: (aCollection collect: #name)) ) ]
]
