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
	irEntities := intermediateEntities at: anIRKind ifAbsent: [#()].

	^irEntities
		detect: [ :irEntity | irEntity name = aName ]
		ifNone: [ |irEntity |
			irEntity := self createIREntity: aName withKind: anIRKind.
			irEntities add: irEntity.
			intermediateEntities at: anIRKind put: irEntities.
			irEntity ]
]

{ #category : #'ir entities' }
PWBTypeDeclarationVisitor >> ensureTypeNamed: typeName from: superName [
	| irType irSuper retrievedFamixKinds expectedFamixKinds |
	irType := self
		ensureIREntity: typeName
		withKind: PWBIRType.

	retrievedFamixKinds := irType expectedFamixKinds.
	expectedFamixKinds := self expectedFamixKindsFor: typeName from: superName.
	retrievedFamixKinds
	ifNil: [ irType expectedFamixKinds: expectedFamixKinds ]
	ifNotNil: [ irType expectedFamixKinds: (retrievedFamixKinds intersection: expectedFamixKinds) ].

	irType owner: self currentEntity.
	
	irSuper := self ensureIREntity: superName withKind: PWBIRType.
	irSuper expectedFamixKinds: irType expectedFamixKinds.
	irType superType: irSuper.
	irSuper addSubType: irType.

	^irType

]

{ #category : #'famix kind' }
PWBTypeDeclarationVisitor >> expectedFamixKindsFor: typeName from: superName [

	(typeName = file basenameWithoutExtension)
	ifTrue: [ ^ {self expectedFamixKindsFromFileExtension}].

	(self retrieveExpectedFamixKindsFrom: superName)
	ifEmpty: [ ^self defaultFamixTypeKinds ]
	ifNotEmpty: [ :expectedFamixKinds | ^ expectedFamixKinds ].

	
]

{ #category : #'famix kind' }
PWBTypeDeclarationVisitor >> expectedFamixKindsFromFileExtension [
	"expected famix kind of a type with the same name as its containing file"
	| fileExtension |
	fileExtension := file extension.

	{ 'sru' -> FamixPWBUserObject .
		'srd' -> FamixPWBDataWindow .
		'srs' -> FamixPWBStructure
	}
	detect: [ :assoc | assoc key = fileExtension ]
	ifFound: [ :found | ^found value ]
	ifNone: [ Error signal: 'Unknown file extension not allowing to deduce an expected FamixType kind: ' , fileExtension ]

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

{ #category : #'famix kind' }
PWBTypeDeclarationVisitor >> retrieveExpectedFamixKindsFrom: aName [
	"gets expectedFamixKinds of already existing IRType with the given name (if any)"
	^(self irEntity: aName withKind: PWBIRType)
	ifNil: [ #() ]
	ifNotNil: [ :irEntity | irEntity expectedFamixKinds ].


]

{ #category : #visiting }
PWBTypeDeclarationVisitor >> visitPWBASTCustomType: aPWBASTCustomType [
	^aPWBASTCustomType identifier
]

{ #category : #visiting }
PWBTypeDeclarationVisitor >> visitPWBASTTypeDeclaration: aPWBASTTypeDeclaration [
	| irType |
	1halt.
	irType := self
		ensureTypeNamed: (self visit: aPWBASTTypeDeclaration type) identifier
		from: (self visit: aPWBASTTypeDeclaration fromClause) identifier.
	"self visit: aPWBASTTypeDeclaration eventType.
	self visit: aPWBASTTypeDeclaration withinClause.
	self visit: aPWBASTTypeDeclaration descriptor."
	self
		useCurrentEntity: irType
		during: [ self visit: aPWBASTTypeDeclaration attributes ]

]
