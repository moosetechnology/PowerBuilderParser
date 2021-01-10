Class {
	#name : #PWBTypeDeclarationVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #visiting }
PWBTypeDeclarationVisitor >> ensureAlias: aliasName fromOwner: ownerIdentifier [
	| irAlias resolvable |
	irAlias :=
		model
			ensureIR: PWBIRAliasEntity
			named: aliasName
			owner: self currentEntity.
	resolvable := self
		resolvable:
			(SRTypeIdentifierWithNode
				name: ownerIdentifier identifier
				expectedKind: PWBIRType mappingFamixClasses
				node: ownerIdentifier). "for now, 'node' could be the parent PWBASTTypeDeclaration"
	resolvable
		foundAction: [ :identifier :currentEntity |
			irAlias
				aliasedEntity:
					(identifier entity members 
						detect: [ :externalIR | externalIR name = aliasName ]
						ifNone: [
							(model irStub: PWBIRType named: aliasName)
								owner: (identifier entity) ;
								yourself ])
			] ;
		notFoundReplacementEntity:  [ :identifier :currentEntity |
			model irStub: PWBIRType named: ownerIdentifier identifier
		].
	
	self resolve: resolvable.
	^irAlias

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
		ifNil: [ irType setExpectedFamixKindsToDefault ].

	superIdentifier
		ifNotNil: [
			self superType: superIdentifier forIrType: irType.
		].
	^ irType
]

{ #category : #'famix kind' }
PWBTypeDeclarationVisitor >> famixTypeKindFromFileExtension [
	"expected famix kind of a PWB type with the same name as its containing file
	We get the famix class associated to the extension, then check it corresponds to a PWB type"
	| famixKind |
	famixKind := self famixClassForFileExtension: file extension.
	^(PWBIRType mappingFamixClasses includes: famixKind) 
	ifTrue: [ famixKind ]
	ifFalse: [ nil ]
]

{ #category : #'famix kind' }
PWBTypeDeclarationVisitor >> getSuperType: superName [
	(model getAllIR: PWBIRType named: superName)
		ifEmpty: [
			^(model irStub: PWBIRType named: superName)
				setExpectedFamixKindsToDefault ;
				yourself.
		]
		ifNotEmpty: [ :superCandidates |
			"hopefully there is only one ..."
			^superCandidates anyOne
		]
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
				name: typeIdentifier identifier
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
				fromOwner: aPWBASTTypeDeclaration withinClause customType identifier ]
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
