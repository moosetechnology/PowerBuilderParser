Class {
	#name : #PWBTypeDeclarationVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #visiting }
PWBTypeDeclarationVisitor >> ensureAlias: aliasName fromOwner: externalOwnerIdentifier [
	| irAlias resolvable |
	irAlias :=
		model
			ensureIR: PWBIRAliasEntity
			named: aliasName
			owner: self currentEntity.
	resolvable := self
		resolvable:
			(SRTypeIdentifierWithNode
				identifier: externalOwnerIdentifier
				expectedKind: self defaultFamixTypeKinds
				node: externalOwnerIdentifier). "for now, 'node' could be the parent PWBASTTypeDeclaration"
	resolvable
		foundAction: [ :identifier :currentEntity |
			irAlias aliasedEntity: identifier entity
		] ;
		notFoundReplacementEntity:  [ :identifier :currentEntity |
			model irStub: PWBIRType named: aliasName
		].
	
	self resolve: resolvable.

]

{ #category : #'ir entities' }
PWBTypeDeclarationVisitor >> ensureTypeNamed: typeIdentifier withSuper: superIdentifier [
	| irType |
	(self isMainEntityOfCurrentFile: typeIdentifier identifier)
		ifTrue: [ ^ self currentEntity ].
	irType := model
		ensureIR: PWBIRType
		named: typeIdentifier identifier
		owner: self currentEntity.
	irType expectedFamixKinds
		ifNil: [ irType expectedFamixKinds: self defaultFamixTypeKinds ].

	superIdentifier
		ifNotNil: [
			self irType: irType inheritsExpectedFamixKindsFrom: superIdentifier.
			self superType: superIdentifier forIrType: irType.
		].
	^ irType
]

{ #category : #visiting }
PWBTypeDeclarationVisitor >> externalTypeOwner: aPWBASTTypeDeclaration [
	| externalTypeName externalOwnerIdentifier resolvable |
	externalTypeName := aPWBASTTypeDeclaration type identifier identifier.
	externalOwnerIdentifier := aPWBASTTypeDeclaration withinClause customType identifier identifier.

	resolvable := self
		resolvable:
			(SRTypeIdentifierWithNode
				identifier: externalOwnerIdentifier
				expectedKind: self defaultFamixTypeKinds
				node: aPWBASTTypeDeclaration).
	resolvable
		foundAction: [ :identifier :currentEntity |
			1halt.
			identifier entity reachableEntities detect: [ :ir | ir name = externalTypeName ]
		].
	self resolve: resolvable.

]

{ #category : #'famix kind' }
PWBTypeDeclarationVisitor >> famixTypeKindFromFileExtension [
	"expected famix kind of a PWB type with the same name as its containing file
	We get the famix class associated to the extension, then check it corresponds to a PWB type"
	| famixKind |
	famixKind := self famixClassForFileExtension: file extension.
	^(self defaultFamixTypeKinds includes: famixKind) 
	ifTrue: [ famixKind ]
	ifFalse: [ nil ]
]

{ #category : #'famix kind' }
PWBTypeDeclarationVisitor >> getSuperType: superName [
	(model getAllIR: PWBIRType named: superName)
		ifEmpty: [
			^(model irStub: PWBIRType named: superName)
				expectedFamixKinds: (self defaultFamixTypeKinds) ;
				yourself.
		]
		ifNotEmpty: [ :superCandidates |
			"hopefully there is only one ..."
			^superCandidates anyOne
		]
]

{ #category : #'famix kind' }
PWBTypeDeclarationVisitor >> irType: irType inheritsExpectedFamixKindsFrom: superIdentifier [
	"expectedFamixKind may be already known, otherwise, it can be found:
	 - if type is main type of the file, then derived from the file extension
	 - if superType is knowm, then type and subtype have the same
	 - all possible FamixKinds for types"

	| expectedFamixKinds irSuper newExpectedFamixKinds |
	expectedFamixKinds := irType expectedFamixKinds.
		
	(self isMainEntityOfCurrentFile: irType name)
		ifTrue: [ self famixTypeKindFromFileExtension
			ifNotNil: [ :expectedKindFromFileName | 
				^irType
					expectedFamixKinds: (expectedFamixKinds intersection: {expectedKindFromFileName}) ]
		].

	irSuper := self getSuperType: superIdentifier identifier.
	newExpectedFamixKinds := expectedFamixKinds
		intersection: irSuper expectedFamixKinds.

	irSuper expectedFamixKinds: newExpectedFamixKinds.
	irType expectedFamixKinds: newExpectedFamixKinds

]

{ #category : #testing }
PWBTypeDeclarationVisitor >> isExternallyDefinedType: aPWBASTWithinClause [
	^ aPWBASTWithinClause
		ifNil: [ false ]
		ifNotNil: [
			(self isMainEntityOfCurrentFile: aPWBASTWithinClause customType identifier identifier)
				not
		]
]

{ #category : #testing }
PWBTypeDeclarationVisitor >> isMainEntityOfCurrentFile: typeName [
	^(typeName = (file basename allButLast: 4)) and:
	[ typeName = (self currentEntity name) ] "i.e. we are in top scope of this file"
]

{ #category : #'ir entities' }
PWBTypeDeclarationVisitor >> superType: typeIdentifier forIrType: irType [
	| resolvable |
	resolvable := self
		resolvable:
			(SRTypeIdentifierWithNode
				identifier: typeIdentifier identifier
				expectedKind: irType expectedFamixKinds
				node: typeIdentifier).
	resolvable
		foundAction:
				[ :identifier :currentEntity | irType superType: identifier entity ];
		notFoundReplacementEntity: [ :identifier :currentEntity | 
			(model irStub: PWBIRType named: typeIdentifier identifier)
				expectedFamixKinds: irType expectedFamixKinds ;
				yourself ].
	self resolve: resolvable
]

{ #category : #testing }
PWBTypeDeclarationVisitor >> testRedefinesAttributesValuesOfKnownType: aPWBASTTypeDeclaration [
	"syntax: 'type <aType> from <superType>`<innerType> ...'
	indicates a redefinition of some attributes value in innerType member of superType
	This is marked in the AST by the #eventType member"
	^aPWBASTTypeDeclaration eventType isNotNil

]

{ #category : #visiting }
PWBTypeDeclarationVisitor >> visitPWBASTFromClause: aPWBASTFromClause [
	^self auxiliaryVisitor: PWBTypeReferenceVisitor visit: aPWBASTFromClause customType.
]

{ #category : #visiting }
PWBTypeDeclarationVisitor >> visitPWBASTTypeDeclaration: aPWBASTTypeDeclaration [
	| irType |
	(self testRedefinesAttributesValuesOfKnownType: aPWBASTTypeDeclaration)
	ifTrue: [ ^self ].

	irType :=
	(self isExternallyDefinedType: aPWBASTTypeDeclaration withinClause)
		ifTrue: [
			self
				ensureAlias: aPWBASTTypeDeclaration type identifier identifier
				fromOwner: aPWBASTTypeDeclaration withinClause identifier ]
		ifFalse: [
			self
				ensureTypeNamed: (aPWBASTTypeDeclaration type identifier)
				withSuper: aPWBASTTypeDeclaration fromClause customType identifier.
		].

	self visit: aPWBASTTypeDeclaration descriptor.

	(irType = self currentEntity)
	ifTrue: [ self visit: aPWBASTTypeDeclaration attributes ]
	ifFalse: [
		self
			useCurrentEntity: irType
			during: [ self visit: aPWBASTTypeDeclaration attributes ]
	]

]
