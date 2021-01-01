"
A specialized visitor to handle variable declarations
This includes FamixPWBInstanceVariable, FamixPWBSharedVariable, FamixPWBParameter

Instance variable famixClass controls what kind of entity to create, default is FamixPWBInstanceVariable
"
Class {
	#name : #PWBVariableDeclarationVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#instVars : [
		'defaultFamixClass'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #'ir entities' }
PWBVariableDeclarationVisitor >> declaredType: typeIdentifier forIRValueHolder: irValueHolder [
	| resolvable |
	resolvable := self
		resolvable:
			(SRTypeIdentifierWithNode
				identifier: typeIdentifier identifier
				expectedKind: self defaultFamixTypeKinds
				node: typeIdentifier).
	resolvable
		foundAction: [ :identifier :currentEntity |
			irValueHolder declaredType: identifier entity ];
		notFoundReplacementEntity: [ :identifier :currentEntity | 
			(self
				ensureIR: PWBIRType
				named: typeIdentifier identifier
				owner: currentEntity)
				expectedFamixKinds: self defaultFamixTypeKinds;
				yourself ].
	self resolve: resolvable
]

{ #category : #initialization }
PWBVariableDeclarationVisitor >> initialize [
	super initialize.
	defaultFamixClass := FamixPWBInstanceVariable
]

{ #category : #visiting }
PWBVariableDeclarationVisitor >> visitPWBASTArgument: aPWBASTArgument [
	self
		declaredType: (self auxiliaryVisitor: PWBTypeReferenceVisitor visit: aPWBASTArgument type)
		forIRValueHolder:
			(self
				ensureIRForFamixClass: defaultFamixClass
				named: (self visit: aPWBASTArgument identifier)
				owner: self currentEntity)
]

{ #category : #visiting }
PWBVariableDeclarationVisitor >> visitPWBASTArguments: aPWBASTArguments [
	defaultFamixClass := FamixPWBParameter.
	^self visitAll: aPWBASTArguments arguments
]

{ #category : #visiting }
PWBVariableDeclarationVisitor >> visitPWBASTSharedVariables: aPWBASTSharedVariables [
	defaultFamixClass := FamixPWBSharedVariable.
	^self visit: aPWBASTSharedVariables attributes.
]

{ #category : #visiting }
PWBVariableDeclarationVisitor >> visitPWBASTVariableDeclarations: aPWBASTVariableDeclarations [
	| typeIdentifier |
	typeIdentifier := self auxiliaryVisitor: PWBTypeReferenceVisitor visit: aPWBASTVariableDeclarations type type.
	aPWBASTVariableDeclarations variableAssignations
		do: [ :anASTVariableAssignation | 
			self
				declaredType: typeIdentifier
				forIRValueHolder:
					(self
						ensureIRForFamixClass: defaultFamixClass
						named: anASTVariableAssignation variable identifier identifier
						owner: self currentEntity) ]
]
