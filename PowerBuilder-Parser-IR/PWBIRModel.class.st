Class {
	#name : #PWBIRModel,
	#superclass : #Object,
	#instVars : [
		'irEntities'
	],
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #private }
PWBIRModel >> createIR: anIRKind named: aName owner: owner [
	| ofKind irEntity |
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
