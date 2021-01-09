Class {
	#name : #PWBIRModel,
	#superclass : #Object,
	#instVars : [
		'irEntities'
	],
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #accessing }
PWBIRModel >> anyOne [
	"Any IR entity in any collection of entity associated to an IR-class"
	^irEntities anyOne anyOne
]

{ #category : #private }
PWBIRModel >> createIR: anIRKind named: aName owner: owner [
	| ofKind irEntity |
	(self isNilOrSelf: owner)
	ifFalse: [
		^owner members
			createIR: anIRKind named: aName owner: owner
	].

	ofKind := self getAllIR: anIRKind.
	irEntity := 	anIRKind new
		name: aName ;
		owner: owner ;
		yourself.
	ofKind add: irEntity.
	^irEntity

]

{ #category : #creating }
PWBIRModel >> ensureIR: anIRKind named: aName owner: owner [
	| ofKind |
	(self isNilOrSelf: owner)
	ifFalse: [
		^owner members
			ensureIR: anIRKind named: aName owner: owner
	].

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

{ #category : #private }
PWBIRModel >> isNilOrSelf: anIREntity [
	anIREntity ifNil: [ ^true ].
	^anIREntity members = self
]

{ #category : #accessing }
PWBIRModel >> reachableEntitiesOwned [
	^ self getAllEntities
]

{ #category : #enumerating }
PWBIRModel >> size [
	^irEntities inject: 0 into: [ :sum :coll | sum + coll size ]
]
