Class {
	#name : #PWBTypeDeclarationVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #'ir entities' }
PWBTypeDeclarationVisitor >> ensureTypeNamed: typeIdentifier from: superIdentifier [
	| irType |
	(self isMainEntityOfCurrentFile: typeIdentifier)
		ifTrue: [ ^ self currentEntity ].
	irType := model
		ensureIR: PWBIRType
		named: typeIdentifier identifier
		owner: self currentEntity.
	self expectedFamixKindsForType: irType from: superIdentifier.
	superIdentifier
		ifNotNil: [ self superType: superIdentifier forIrType: irType ].
	^ irType
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
	irType name = file basenameWithoutExtension
		ifTrue: [ self famixTypeKindFromFileExtension
			ifNotNil: [ :expectedKindFromFileName | 
				^irType
					expectedFamixKinds: (expectedFamixKinds intersection: {expectedKindFromFileName}) ]
		].
	superIdentifier
		ifNotNil: [ | irSuper newExpectedFamixKinds |
			irSuper := self getSuperType: superIdentifier identifier.
			newExpectedFamixKinds := expectedFamixKinds
					intersection: irSuper expectedFamixKinds.

			irSuper expectedFamixKinds: newExpectedFamixKinds.
			^irType expectedFamixKinds: newExpectedFamixKinds
		].

	irType expectedFamixKinds: expectedFamixKinds
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

{ #category : #testing }
PWBTypeDeclarationVisitor >> isMainEntityOfCurrentFile: typeIdentifier [
	^((typeIdentifier identifier) = (file basename allButLast: 4)) and:
	[ (typeIdentifier identifier) = (self currentEntity name) ] "i.e. we are in top scope of this file"
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

	irType := self
		ensureTypeNamed: (self auxiliaryVisitor: PWBTypeReferenceVisitor visit: aPWBASTTypeDeclaration type)
		from: (self visit: aPWBASTTypeDeclaration fromClause).

	"presumably it is always 'within <currentEntity>' or 'nil' for the currentEntity itself
	self visit: aPWBASTTypeDeclaration withinClause."	

	"does not seem to be used ...
	self visit: aPWBASTTypeDeclaration descriptor."

	"we do not visit attributes either because it seems they are only used
	 to give value to predefined PowerBilder attributes"
	"(irType = self currentEntity)
	ifTrue: [ self visit: aPWBASTTypeDeclaration attributes ]
	ifFalse: [
		self
			useCurrentEntity: irType
			during: [ self visit: aPWBASTTypeDeclaration attributes ]
	]"

]
