"
A visitor to build a FAST (FamixAST) model from a PowerBuilder function
"
Class {
	#name : #PWBFASTCreatorVisitor,
	#superclass : #PWBASTAbstractVisitor,
	#instVars : [
		'fastNode',
		'fastEntities'
	],
	#category : #'PowerBuilder-Importer-Visitors'
}

{ #category : #accessing }
PWBFASTCreatorVisitor >> addEntity: aFastEntity [
	fastEntities add: aFastEntity
]

{ #category : #'entities creation' }
PWBFASTCreatorVisitor >> createFASTNode: anASTPWBNodeClass [
	fastNode := anASTPWBNodeClass new.
	self addEntity: fastNode.
	^fastNode
]

{ #category : #'entities creation' }
PWBFASTCreatorVisitor >> createFASTNode: anASTPWBNodeClass fromPPNode: aPPASTNode [
	fastNode := anASTPWBNodeClass new.
	fastNode
		startPos: aPPASTNode startPosition ;
		endPos: aPPASTNode stopPosition.

	self addEntity: fastNode.
	^fastNode
]

{ #category : #accessing }
PWBFASTCreatorVisitor >> fastEntities [
	^fastEntities
]

{ #category : #initialization }
PWBFASTCreatorVisitor >> initialize [
	super initialize.
	fastEntities := OrderedCollection new
]

{ #category : #visiting }
PWBFASTCreatorVisitor >> visitPWBASTAccess: aPWBASTAccess [
	| subNode |
	self visit: aPWBASTAccess accessed.
	subNode := fastNode.
	
	self createFASTNode: FASTPWBAccess fromPPNode: aPWBASTAccess.
	fastNode identifier: subNode.
	
	^fastNode
]

{ #category : #visiting }
PWBFASTCreatorVisitor >> visitPWBASTAttributeAccess: aPWBASTAttributeAccess [
	| subNode |
	self visit: aPWBASTAttributeAccess uncheckedIdentifier.
	subNode := fastNode.
	
	self createFASTNode: FASTPWBAccess fromPPNode: aPWBASTAttributeAccess.
	fastNode identifier: subNode.
	
	^fastNode
]

{ #category : #visiting }
PWBFASTCreatorVisitor >> visitPWBASTExpression: aPWBASTExpression [
	| subNode |
	self visit: aPWBASTExpression expression.
	aPWBASTExpression expressionAction
	ifNil: [ ^ fastNode ].

	subNode := fastNode.
	self createFASTNode: FASTPWBDottedExpression fromPPNode: aPWBASTExpression.
	fastNode majorObject: subNode.

	subNode := fastNode.
	self visit: aPWBASTExpression expressionAction.
	subNode member: fastNode.
	
	^fastNode := subNode
]

{ #category : #visiting }
PWBFASTCreatorVisitor >> visitPWBASTFunctionInvocation: aPWBASTFunctionInvocation [
	self visit: aPWBASTFunctionInvocation defaultVariable.
	(self createFASTNode: FASTPWBFunctionInvocation fromPPNode: aPWBASTFunctionInvocation) 
		identifier: aPWBASTFunctionInvocation functionName.
	self visit: aPWBASTFunctionInvocation functionArguments.

	^fastNode
]

{ #category : #visiting }
PWBFASTCreatorVisitor >> visitPWBASTNumber: aPWBASTNumber [
	self createFASTNode: ((aPWBASTNumber number asString includes: $.)
		ifTrue: [ FASTPWBFloatLiteral ]
		ifFalse: [ FASTPWBIntegerLiteral ]).
		
	fastNode value: aPWBASTNumber number.
	
	^fastNode 

]

{ #category : #visiting }
PWBFASTCreatorVisitor >> visitPWBASTRegularMethodInvocation: aPWBASTRegularMethodInvocation [
	| subNode |
	self visit: aPWBASTRegularMethodInvocation uncheckedIdentifier.
	subNode := fastNode.

	(self createFASTNode: FASTPWBFunctionInvocation fromPPNode: aPWBASTRegularMethodInvocation) 
		identifier: subNode.
	fastNode startPos: (fastNode startPos + 1).  "remove '.' from the FunctionInvocation"

	self visit: aPWBASTRegularMethodInvocation functionArguments.
	^fastNode
]

{ #category : #visiting }
PWBFASTCreatorVisitor >> visitPWBASTReturnStatement: aPWBASTReturnStatement [
	| subNode |
	self visit: aPWBASTReturnStatement expression.
	subNode := fastNode.
	
	(self createFASTNode: FASTPWBReturnStatement fromPPNode: aPWBASTReturnStatement ) 
		expression: subNode.

	^fastNode
]

{ #category : #visiting }
PWBFASTCreatorVisitor >> visitPWBASTString: aPWBASTString [
	self createFASTNode: FASTPWBStringLiteral.
	fastNode value: aPWBASTString string.
	
	^fastNode 

]

{ #category : #visiting }
PWBFASTCreatorVisitor >> visitPWBASTThis: aPWBASTThis [
	^self createFASTNode: FASTPWBImplicitVariable

]

{ #category : #visiting }
PWBFASTCreatorVisitor >> visitPWBASTUncheckedIdentifier: aPWBASTUncheckedIdentifier [
	self createFASTNode: FASTPWBIdentifier.
	fastNode name: aPWBASTUncheckedIdentifier uncheckedIdentifier.
	^fastNode 

]
