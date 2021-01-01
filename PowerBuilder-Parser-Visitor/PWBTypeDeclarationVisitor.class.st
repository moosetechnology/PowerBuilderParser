Class {
	#name : #PWBTypeDeclarationVisitor,
	#superclass : #PWBImporterAbstractVisitor,
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #'ir entities' }
PWBTypeDeclarationVisitor >> declaredType: typeIdentifier forIrAttribute: irAttribute [
	| resolvable |
	resolvable := self
		resolvable:
			(SRTypeIdentifierWithNode
				identifier: typeIdentifier identifier
				expectedKind: self defaultFamixTypeKinds
				node: typeIdentifier).
	resolvable
		foundAction:
				[ :identifier :currentEntity | irAttribute declaredType: identifier entity ];
		notFoundReplacementEntity: [ :identifier :currentEntity | 
			(self
				ensureIR: PWBIRType
				named: typeIdentifier identifier
				owner: currentEntity)
				expectedFamixKinds: self defaultFamixTypeKinds;
				yourself ].
	self resolve: resolvable
]

{ #category : #'famix kind' }
PWBTypeDeclarationVisitor >> defaultFamixTypeKinds [
	^PWBIRType mappingFamixClasses
]

{ #category : #'ir entities' }
PWBTypeDeclarationVisitor >> ensureTypeNamed: typeIdentifier from: superIdentifier [
	| irType |
	(self isMainTypeOfFile: typeIdentifier)
		ifTrue: [ ^ self currentEntity ].
	irType := self
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
					^ irType
						expectedFamixKinds: (expectedFamixKinds intersection: {expectedKindFromFileName}) ] ].
	superIdentifier
		ifNotNil: [ (self getAllIR: PWBIRType named: superIdentifier identifier)
				ifNotNil: [ :irSuper | 
					| newExpectedFamixKinds |
					newExpectedFamixKinds := expectedFamixKinds
						intersection: irSuper expectedFamixKinds.
					irSuper expectedFamixKinds: newExpectedFamixKinds.
					^ irType expectedFamixKinds: newExpectedFamixKinds ] ].
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
			(self
				ensureIR: PWBIRType
				named: typeIdentifier identifier
				owner: currentEntity)
				expectedFamixKinds: irType expectedFamixKinds;
				yourself ].
	self resolve: resolvable
]

{ #category : #visiting }
PWBTypeDeclarationVisitor >> visitPWBASTBasicType: aPWBASTBasicType [
	"ensures the basicType as a top level entity
	+ translates the ASTBasicType into an ASTIdentifier
	the Famix entity will be recovered by the symbolResolver from the ASTIdentifier"
	self
		ensureIRForFamixClass: FamixPWBBasicType named: aPWBASTBasicType basicType owner: nil.
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
PWBTypeDeclarationVisitor >> visitPWBASTParametrizedType: aPWBASTParametrizedType [
	"translates the ASTParameterizedType into an ASTIdentifier"
	^PWBASTIdentifier new
		startPosition: aPWBASTParametrizedType startPosition ;
		stopPosition: aPWBASTParametrizedType stopPosition ;
		identifier: aPWBASTParametrizedType parametrizedType ;
		yourself
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

{ #category : #visiting }
PWBTypeDeclarationVisitor >> visitPWBASTVariableDeclarations: aPWBASTVariableDeclarations [
	"aPWBASTVariableDeclarations type is either a ASTBasicType or ASTCustomType
	in both case we want an ASTIdentifier to simplify processing
	see #visitPWBASTBasicType: "

	| typeIdentifier |
	typeIdentifier := self visit: aPWBASTVariableDeclarations type type.
	aPWBASTVariableDeclarations variableAssignations
		do: [ :anASTVariableAssignation | 
			self
				declaredType: typeIdentifier
				forIrAttribute:
					(self
						ensureIRForFamixClass: FamixPWBInstanceVariable
						named: anASTVariableAssignation variable identifier identifier
						owner: self currentEntity) ]
]
