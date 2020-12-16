"
A visitor to build a FAST (FamixAST) model from a PowerBuilder function
"
Class {
	#name : #PWBFASTCreatorVisitor,
	#superclass : #PWBImporterAbstractVisitor,
	#instVars : [
		'fastNode',
		'fastEntities'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #accessing }
PWBFASTCreatorVisitor >> addEntity: aFastEntity [
	fastEntities add: aFastEntity
]

{ #category : #'entities creation' }
PWBFASTCreatorVisitor >> createNode: anASTPWBNodeClass [
	fastNode := anASTPWBNodeClass new.
	self addEntity: fastNode.
	^fastNode
]

{ #category : #'entities creation' }
PWBFASTCreatorVisitor >> createNode: anASTPWBNodeClass fromPPNode: aPPASTNode [
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
PWBFASTCreatorVisitor >> visitPWBASTNumber: aPWBASTNumber [
	self createNode: ((aPWBASTNumber number asString includes: $.)
		ifTrue: [ FASTPWBFloatLiteral ]
		ifFalse: [ FASTPWBIntegerLiteral ]).
		
	fastNode value: aPWBASTNumber number.
	
	^fastNode 

]

{ #category : #visiting }
PWBFASTCreatorVisitor >> visitPWBASTReturnStatement: aPWBASTReturnStatement [
	| expressionNode |
	self visit: aPWBASTReturnStatement expression.
	expressionNode := fastNode.
	
	(self createNode: FASTPWBReturnStatement fromPPNode: aPWBASTReturnStatement ) 
		expression: expressionNode.

	^fastNode
]

{ #category : #visiting }
PWBFASTCreatorVisitor >> visitPWBASTString: aPWBASTString [
	self createNode: FASTPWBStringLiteral.
	fastNode value: aPWBASTString number.
	
	^fastNode 

]
