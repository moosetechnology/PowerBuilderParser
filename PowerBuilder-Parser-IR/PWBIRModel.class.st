Class {
	#name : #PWBIRModel,
	#superclass : #Object,
	#instVars : [
		'irEntities',
		'famixModel'
	],
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #accessing }
PWBIRModel >> anyOne [
	"Any IR entity in any collection of entity associated to an IR-class"
	^irEntities anyOne anyOne
]

{ #category : #creating }
PWBIRModel >> createIR: anIRKind [
	| irEntity |
	irEntity := 	anIRKind new.
	(self getAllIR: anIRKind)
		add: irEntity.
	^irEntity

]

{ #category : #creating }
PWBIRModel >> createIR: anIRKind named: aName owner: owner [
	| irEntity |
	1haltIf:[ aName = 'lL_return'].
	irEntity := 	(self createIR: anIRKind)
		name: aName ;
		owner: owner ;
		yourself.

	owner ifNotNil: [ owner addMember: irEntity ].

	^irEntity

]

{ #category : #enumerating }
PWBIRModel >> do: aBlock [
	"a #do: that does not need to create new collection(s)"
	irEntities values do: [ :entitiesByKind |
		entitiesByKind do: aBlock ]
]

{ #category : #creating }
PWBIRModel >> ensureIR: anIRKind named: aName owner: owner [
	| ofKind |
	ofKind := self getAllIR: anIRKind.
	^ ofKind
		detect: [ :irEntity |
			(irEntity name = aName) and: [ irEntity owner = owner ] ]
		ifNone: [
			self createIR: anIRKind named: aName owner: owner ]
]

{ #category : #creating }
PWBIRModel >> ensureIRForFamixClass: aFamixClass named: aName owner: owner [
	^(self
		ensureIR: (PWBIRNamedEntity irClassForFamixClass: aFamixClass)
		named: aName
		owner: owner)
		expectedFamixKinds: { aFamixClass } ;
		yourself
]

{ #category : #accessing }
PWBIRModel >> famixModel [
	^famixModel
]

{ #category : #accessing }
PWBIRModel >> famixModel: aModel [
	famixModel := aModel
]

{ #category : #enumerating }
PWBIRModel >> getAllEntities [
	^irEntities values flatten
]

{ #category : #enumerating }
PWBIRModel >> getAllFamixType: aFamixClass [
	^(self getAllIR: (PWBIRNamedEntity irClassForFamixClass: aFamixClass))
		select: [ :irEntity | irEntity expectedFamixKinds includes: aFamixClass ]
]

{ #category : #enumerating }
PWBIRModel >> getAllIR: anIRKind [
	^irEntities at: anIRKind ifAbsentPut: [ OrderedCollection new ]
]

{ #category : #enumerating }
PWBIRModel >> getAllIR: anIRKind named: aName [
	^(self getAllIR: anIRKind)
		select: [ :irEntity | irEntity name = aName ].
]

{ #category : #initialization }
PWBIRModel >> initialize [
	irEntities := Dictionary new: (PWBIRNamedEntity allSubclasses size)
]

{ #category : #creating }
PWBIRModel >> irStub: anIRKind named: aName [
	^self ensureIR: anIRKind named: aName owner: nil
]

{ #category : #creating }
PWBIRModel >> irStubForFamixClass: aFamixClass named: aName [
	^self ensureIRForFamixClass: aFamixClass named: aName owner: nil
]

{ #category : #accessing }
PWBIRModel >> reachableEntitiesOwned [
	^ irEntities flatCollect: [ :kindEntities | kindEntities select: [ :ir | ir isResolverReachable ] ]
]

{ #category : #enumerating }
PWBIRModel >> size [
	^irEntities inject: 0 into: [ :sum :coll | sum + coll size ]
]

{ #category : #converting }
PWBIRModel >> toFamix [
	famixModel ifNil: [ famixModel := FamixPWBModel new ].
	self do: [ :irEntity |
			famixModel add: irEntity toFamix ].
	^famixModel
]
