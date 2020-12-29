"
temporary test class while creating special TypeDeclarationvisitor
"
Class {
	#name : #PWBASTMULTIVisitorChainOfIdentifierTest,
	#superclass : #PWBASTVisitorChainOfIdentifierTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBASTMULTIVisitorChainOfIdentifierTest >> setupVisitor [
	super setupVisitor.
	visitor beMultiple 
]
