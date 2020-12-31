Class {
	#name : #PWBTypeDeclarationVisitor,
	#superclass : #PWBImporterAbstractVisitor,
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #'ir entities' }
PWBTypeDeclarationVisitor >> createIREntity: aName withKind: anIRKind [
	^anIRKind new
		name: aName ;
		owner: self currentEntity ;
		yourself
]

{ #category : #'ir entities' }
PWBTypeDeclarationVisitor >> createIREntity: aName withKind: anIRKind currentEntity: currentEntity [
	^anIRKind new
		name: aName ;
		owner: currentEntity ;
		yourself
]

{ #category : #'ir entities' }
PWBTypeDeclarationVisitor >> declaredType: typeIdentifier forIrAttribute: irAttribute [
	| resolvable |
	self currentEntity.
	resolvable := self resolvable:
		(SRTypeIdentifierWithNode
			identifier: typeIdentifier identifier
			expectedKind: self defaultFamixTypeKinds
			node: typeIdentifier).

	resolvable
		foundAction: [ :identifier :currentEntity |
			irAttribute declaredType: identifier entity ] ;

		notFoundReplacementEntity: [ :identifier :currentEntity | 
			(self ensureIREntity: typeIdentifier withKind: PWBIRType)
				expectedFamixKinds: self defaultFamixTypeKinds ;
				yourself ].

	self resolve: resolvable
]

{ #category : #'famix kind' }
PWBTypeDeclarationVisitor >> defaultFamixTypeKinds [
	^{ FamixPWBCustomType .
		FamixPWBUserObject .
		FamixPWBDataWindow .
		FamixPWBStructure .
		FamixPWBBasicType }
]

{ #category : #'ir entities' }
PWBTypeDeclarationVisitor >> ensureIREntity: aName withKind: anIRKind [
	| irEntities |
	irEntities := intermediateEntities at: anIRKind ifAbsent: [OrderedCollection new].

	^irEntities
		detect: [ :irEntity | irEntity name = aName ]
		"ifOne: [ should test whether the owner is actually 'currentEntity' ? ]"
		ifNone: [ |irEntity |
			irEntity := self createIREntity: aName withKind: anIRKind.
			irEntities add: irEntity.
			intermediateEntities at: anIRKind put: irEntities.
			irEntity ]
]

{ #category : #'ir entities' }
PWBTypeDeclarationVisitor >> ensureIREntity: aName withKind: anIRKind currentEntity: currentEntity [
	| irEntities |
	irEntities := intermediateEntities at: anIRKind ifAbsent: [OrderedCollection new].

	^irEntities
		detect: [ :irEntity | irEntity name = aName ]
		"ifOne: [ should test whether the owner is actually 'currentEntity' ? ]"
		ifNone: [ |irEntity |
			irEntity := self createIREntity: aName withKind: anIRKind currentEntity: currentEntity.
			irEntities add: irEntity.
			intermediateEntities at: anIRKind put: irEntities.
			irEntity ]
]

{ #category : #'ir entities' }
PWBTypeDeclarationVisitor >> ensureTypeNamed: typeIdentifier from: superIdentifier [
	| irType |
	(self isMainTypeOfFile: typeIdentifier)
	ifTrue: [ ^self currentEntity ].

	irType := self
		ensureIREntity: typeIdentifier identifier
		withKind: PWBIRType.

	self expectedFamixKindsForType: irType from: superIdentifier.
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

{ #category : #testing }
PWBTypeDeclarationVisitor >> isMainTypeOfFile: typeIdentifier [
	^(typeIdentifier identifier = self currentEntity name) and:
		[ self defaultFamixTypeKinds includes: self currentEntity class ]
]

{ #category : #testing }
PWBTypeDeclarationVisitor >> redefinesAttributesValuesOfKnownType: aPWBASTTypeDeclaration [
	"syntax: 'type <aType> from <superType>`<innerType> ...'
	indicates a redefinition of some attributes value in innerType member of superType
	This is marked in the AST by the #eventType member"
	^aPWBASTTypeDeclaration eventType isNotNil

]

{ #category : #'ir entities' }
PWBTypeDeclarationVisitor >> superType: typeIdentifier forIrType: irType [
	| resolvable |
	resolvable := self resolvable:
		(SRTypeIdentifierWithNode
			identifier: typeIdentifier identifier
			expectedKind: irType expectedFamixKinds
			node: typeIdentifier).

	resolvable
		foundAction: [ :identifier :currentEntity |
			irType superType: identifier entity ] ;

		notFoundReplacementEntity: [ :identifier :currentEntity | 
			(self ensureIREntity: typeIdentifier withKind: PWBIRType)
				expectedFamixKinds: (irType expectedFamixKinds) ;
				yourself ].

	self resolve: resolvable
]

{ #category : #visiting }
PWBTypeDeclarationVisitor >> visitPWBASTBasicType: aPWBASTBasicType [
	"translates the ASTBasicType into an ASTIdentifier"
	^PWBASTIdentifier new
		startPosition: aPWBASTBasicType startPosition ;
		stopPosition: aPWBASTBasicType stopPosition ;
		identifier: aPWBASTBasicType basicType ;
		yourself
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
	(self redefinesAttributesValuesOfKnownType: aPWBASTTypeDeclaration)
	ifTrue: [ ^self ].

	irType := self
		ensureTypeNamed: (self visit: aPWBASTTypeDeclaration type)
		from: (self visit: aPWBASTTypeDeclaration fromClause).

	"presumably it is always 'within <currentEntity>' or 'nil' for the currentEntity itself
	self visit: aPWBASTTypeDeclaration withinClause."	

	"does not seem to be used ...
	self visit: aPWBASTTypeDeclaration descriptor."

	(irType = self currentEntity)
	ifTrue: [ self visit: aPWBASTTypeDeclaration attributes ]
	ifFalse: [
		self
			useCurrentEntity: irType
			during: [ self visit: aPWBASTTypeDeclaration attributes ]
	]

]

{ #category : #visiting }
PWBTypeDeclarationVisitor >> visitPWBASTVariableDeclarations: aPWBASTVariableDeclarations [
	"aPWBASTVariableDeclarations type is either a ASTBasicType or ASTCustomType
	in both case we want an ASTIdentifier to simplify processing
	see #visitPWBASTBasicType: "
	| typeIdentifier |
	typeIdentifier := self visit: aPWBASTVariableDeclarations type type.

	aPWBASTVariableDeclarations variableAssignations do: [ :anASTVariableAssignation |
		self
			declaredType: typeIdentifier
			forIrAttribute: 
				(self
					createIREntity: anASTVariableAssignation variable identifier identifier
					withKind: PWBIRAttribute)
	]
	
]
