Class {
	#name : #PWBBehaviouralDeclarationVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTVariableDeclarations: aPWBASTVariableDeclarations [
	(self auxiliaryVisitor: PWBVariableDeclarationVisitor)
		defaultFamixClass: FamixPWBLocalVariable ;
		visit: aPWBASTVariableDeclarations
]
