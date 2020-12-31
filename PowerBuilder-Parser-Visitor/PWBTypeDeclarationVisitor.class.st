Class {
	#name : #PWBTypeDeclarationVisitor,
	#superclass : #PWBImporterAbstractVisitor,
	#instVars : [
		'typeDeclarationType'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #'ir entities' }
PWBTypeDeclarationVisitor >> createIREntity: aName withKind: anIRKind [
	^anIRKind new
		name: aName ;
		yourself
]

{ #category : #'famix kind' }
PWBTypeDeclarationVisitor >> defaultFamixTypeKinds [
	^{ FamixPWBCustomType .
		FamixPWBStructure .
		FamixPWBDataWindow .
		FamixPWBUserObject }
]

{ #category : #'ir entities' }
PWBTypeDeclarationVisitor >> ensureIREntity: aName withKind: anIRKind [
	| irEntities |
	irEntities := intermediateEntities at: anIRKind ifAbsent: [OrderedCollection new].

	^irEntities
		detect: [ :irEntity | irEntity name = aName ]
		ifNone: [ |irEntity |
			irEntity := self createIREntity: aName withKind: anIRKind.
			irEntities add: irEntity.
			intermediateEntities at: anIRKind put: irEntities.
			irEntity ]
]

{ #category : #'ir entities' }
PWBTypeDeclarationVisitor >> ensureTypeNamed: typeIdentifier from: superIdentifier eventType: eventTypeIdentifier [
	| irType |
	irType := self
		ensureIREntity: typeIdentifier identifier
		withKind: PWBIRType.

	self expectedFamixKindsForType: irType from: superIdentifier.
	irType owner: self currentEntity.
	superIdentifier ifNotNil: [ self superType: superIdentifier forIrType: irType ].

	^irType

]

{ #category : #'famix kind' }
PWBTypeDeclarationVisitor >> expectedFamixKindsForType: irType from: superIdentifier [
	"expectedFamixKind may be already known, otherwise, it can be found:
	 - if type is main type of the file, then derived from the file extension
	 - if superType is knowm, then type and subtype have the same
	 - all possible FamixKinds for types"
	| expectedFamixKinds |
	expectedFamixKinds := irType expectedFamixKinds
		ifNil: [ self defaultFamixTypeKinds ].

	(irType name = file basenameWithoutExtension)
	ifTrue: [
		self expectedFamixTypeKindsFromFileExtension
		ifNotNil: [ :expectedKindFromFileName |
			^irType expectedFamixKinds:
				(expectedFamixKinds intersection: {expectedKindFromFileName})
		]].

	superIdentifier ifNotNil: [
		(self irEntity: superIdentifier identifier withKind: PWBIRType)
		ifNotNil: [ :irSuper || newExpectedFamixKinds |
			newExpectedFamixKinds := expectedFamixKinds intersection: irSuper expectedFamixKinds.
			irSuper expectedFamixKinds: newExpectedFamixKinds.
			^irType expectedFamixKinds: newExpectedFamixKinds ]].
	
	irType expectedFamixKinds: expectedFamixKinds

]

{ #category : #'famix kind' }
PWBTypeDeclarationVisitor >> expectedFamixTypeKindsFromFileExtension [
	"expected famix kind of a PWB type with the same name as its containing file"
	| fileExtension |
	fileExtension := file extension.

	^{ 'sru' -> FamixPWBUserObject .
		'srd' -> FamixPWBDataWindow .
		'srs' -> FamixPWBStructure
		}
		detect: [ :assoc | assoc key = fileExtension ]
		ifNone: [ nil ]

]

{ #category : #'ir entities' }
PWBTypeDeclarationVisitor >> irEntity: aName withKind: anIRKind [
	"ideally there should be only one entity of the given IR-kind with the given name"
	| irEntities |
	irEntities := (intermediateEntities at: anIRKind ifAbsent: [#()])
		select: [ :irEntity | irEntity name = aName ].

	irEntities ifEmpty: [ ^ nil ].
	(irEntities size = 1) ifTrue: [ ^ irEntities anyOne ].
	^Error signal: 'Multiple ' , anIRKind asString , ' named ' , aName

]

{ #category : #'ir entities' }
PWBTypeDeclarationVisitor >> superType: superIdentifier forIrType: irType [
	^(self resolvable:
		(SRTypeIdentifierWithNode
			identifier: superIdentifier
			expectedKind: irType expectedFamixKinds
			node: superIdentifier)
		)

		foundAction: [ :identifier :currentEntity |
			irType superType: identifier entity.
			identifier entity addSubType: irType ] ;

		notFoundReplacementEntity: [ :identifier :currentEntity | 
			(self ensureIREntity: superIdentifier withKind: PWBIRType)
				expectedFamixKinds: (irType expectedFamixKinds) ;
				yourself ].

]

{ #category : #visiting }
PWBTypeDeclarationVisitor >> visitPWBASTCustomType: aPWBASTCustomType [
	^aPWBASTCustomType identifier
]

{ #category : #visiting }
PWBTypeDeclarationVisitor >> visitPWBASTFromClause: aPWBASTFromClause [
	^self visit: aPWBASTFromClause customType.
]

{ #category : #visiting }
PWBTypeDeclarationVisitor >> visitPWBASTTypeDeclaration: aPWBASTTypeDeclaration [
	| irType |
	1haltIf: [aPWBASTTypeDeclaration descriptor isNotNil].
	irType := self
		ensureTypeNamed: (self visit: aPWBASTTypeDeclaration type)
		from: (self visit: aPWBASTTypeDeclaration fromClause)
		eventType: (self visit: aPWBASTTypeDeclaration eventType).
	"self visit: aPWBASTTypeDeclaration withinClause.
	self visit: aPWBASTTypeDeclaration descriptor."
	self
		useCurrentEntity: irType
		during: [ self visit: aPWBASTTypeDeclaration attributes ]

]
