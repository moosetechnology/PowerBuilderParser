Class {
	#name : #PWBFASTAbstractVisitor,
	#superclass : #Object,
	#category : #'PowerBuilder-Importer-Visitors'
}

{ #category : #visiting }
PWBFASTAbstractVisitor >> visit: anObject [
	^anObject ifNotNil: [ anObject accept: self]

]

{ #category : #visiting }
PWBFASTAbstractVisitor >> visitAccess: aFASTAccess [
	^self visit: aFASTAccess identifier

]

{ #category : #visiting }
PWBFASTAbstractVisitor >> visitCharacterLiteral: aFASTCharacterLiteral [
	^aFASTCharacterLiteral value
]

{ #category : #visiting }
PWBFASTAbstractVisitor >> visitDottedExpression: aFASTDottedExpression [
	self visit: aFASTDottedExpression majorObject.
	self visit: aFASTDottedExpression member

]

{ #category : #visiting }
PWBFASTAbstractVisitor >> visitEntity: aFASTEntity [
]

{ #category : #visiting }
PWBFASTAbstractVisitor >> visitExpression: aFASTExpression [

]

{ #category : #visiting }
PWBFASTAbstractVisitor >> visitFloatLiteral: aFASTFloatLiteral [
	^aFASTFloatLiteral value

]

{ #category : #visiting }
PWBFASTAbstractVisitor >> visitFunctionInvocation: aFASTFunctionInvocation [
	self visit: aFASTFunctionInvocation identifier.
	self visit: aFASTFunctionInvocation arguments

]

{ #category : #visiting }
PWBFASTAbstractVisitor >> visitIdentifier: aFASTIdentifier [
	^aFASTIdentifier name
]

{ #category : #visiting }
PWBFASTAbstractVisitor >> visitImplicitVariable: aFASTImplicitVariable [

]

{ #category : #visiting }
PWBFASTAbstractVisitor >> visitIntegerLiteral: aFASTIntegerLiteral [
	^aFASTIntegerLiteral value
]

{ #category : #visiting }
PWBFASTAbstractVisitor >> visitReturnStatement: aFASTReturnStatement [
	^self visit: aFASTReturnStatement expression

]

{ #category : #visiting }
PWBFASTAbstractVisitor >> visitStringLiteral: aFASTStringLiteral [
	^aFASTStringLiteral value
]
