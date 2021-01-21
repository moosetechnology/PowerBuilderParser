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

{ #category : #accessing }
PWBVariableDeclarationVisitor >> defaultFamixClass [
	^ defaultFamixClass
]

{ #category : #accessing }
PWBVariableDeclarationVisitor >> defaultFamixClass: anObject [
	defaultFamixClass := anObject
]

{ #category : #initialization }
PWBVariableDeclarationVisitor >> initialize [
	super initialize.
	defaultFamixClass := FamixPWBInstanceVariable
]

{ #category : #visiting }
PWBVariableDeclarationVisitor >> visitPWBASTArgument: aPWBASTArgument [
	| var |
	var := self model
		ensureIRForFamixClass: defaultFamixClass
		named: (self visit: aPWBASTArgument identifier)
		owner: self currentEntity.
	var setSourceAnchorFrom: aPWBASTArgument file: self file.
	self
		declaredType: (self auxiliaryVisitor: PWBTypeReferenceVisitor visit: aPWBASTArgument type)
		forIR: var.
]

{ #category : #visiting }
PWBVariableDeclarationVisitor >> visitPWBASTArguments: aPWBASTArguments [
	defaultFamixClass := FamixPWBParameter.
	^self visitAll: aPWBASTArguments arguments
]

{ #category : #visiting }
PWBVariableDeclarationVisitor >> visitPWBASTGlobalVariables: aPWBASTGlobalVariables [
	defaultFamixClass := FamixPWBGlobalVariable.
	^self visit: aPWBASTGlobalVariables attributes.
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
		do: [ :anASTVariableAssignation || var |
			var := self model
						ensureIRForFamixClass: defaultFamixClass
						named: anASTVariableAssignation variable identifier identifier
						owner: self currentEntity.
			var setSourceAnchorFrom: aPWBASTVariableDeclarations file: self file.
			self declaredType: typeIdentifier forIR: var ]
]
