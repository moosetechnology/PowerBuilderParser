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
	self
		declaredType: (self auxiliaryVisitor: PWBTypeReferenceVisitor visit: aPWBASTArgument type)
		forIR:
			(model
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
				forIR:
					(model
						ensureIRForFamixClass: defaultFamixClass
						named: anASTVariableAssignation variable identifier identifier
						owner: self currentEntity) ]
]
