"
A special visitor for all statements (in behaviourals)

Mainly useful to compute cyclomatic complexity.
Relies on the ExpressionsVisitor to visit expressions inside the statements.
"
Class {
	#name : #PWBStatementsVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#category : #'PowerBuilder-Parser-Visitor-visitors'
}

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTAssignationStatement: aPWBASTAssignationStatement [
	"builds an ExpressionAction from accessOrType and expressionAction to pass it
	 conveniantly to the PWBExpressionsVisitor that will treat it as one (possibly chained) identifier"
	| lhsIdentifier |
	"left hand side (i.e. variable)"
	lhsIdentifier := PWBASTExpressionAction new
		action: (aPWBASTAssignationStatement accessOrType) ;
		expressionAction: (aPWBASTAssignationStatement expressionAction) ;
		yourself.
	(self auxiliaryVisitor: PWBExpressionsVisitor visit:  lhsIdentifier)
		referenceIsAssigned.
	"accessOrType := self visit: aPWBASTAssignationStatement accessOrType.
	variable := self visit: aPWBASTAssignationStatement expressionAction.
	(variable isNotNil and: [ variable isResolvable ])
		ifTrue: [ variable previous: accessOrType ]."

	"right hand side (i.e. value)"
	self auxiliaryVisitor: PWBExpressionsVisitor visit:  aPWBASTAssignationStatement assignation
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTCallStatement: aPWBASTCallStatement [
	^self auxiliaryVisitor: PWBExpressionsVisitor visit: aPWBASTCallStatement
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTCase: aPWBASTCase [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTCase: aPWBASTCase
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTDoLoopUntil: aPWBASTDoLoopUntil [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoLoopUntil: aPWBASTDoLoopUntil
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTDoLoopWhile: aPWBASTDoLoopWhile [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoLoopWhile: aPWBASTDoLoopWhile
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTDoUntilLoop: aPWBASTDoUntilLoop [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoUntilLoop: aPWBASTDoUntilLoop
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTDoWhileLoop: aPWBASTDoWhileLoop [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoWhileLoop: aPWBASTDoWhileLoop
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTDynamicMethodInvocation: aPWBASTMethodInvocation [
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTMethodInvocation)
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTElseIf: aPWBASTElseIf [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTElseIf: aPWBASTElseIf
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTEventInvocation: aPWBASTEventInvocation [
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTEventInvocation)
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTEventTriggeringOrPosting: aPWBASTEventTriggeringOrPosting [
	^self auxiliaryVisitor: PWBExpressionsVisitor visit: aPWBASTEventTriggeringOrPosting
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTExpression: aPWBASTExpression [
	^self auxiliaryVisitor: PWBExpressionsVisitor visit: aPWBASTExpression
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTExpressionAction: aPWBASTExpressionAction [
	^self auxiliaryVisitor: PWBExpressionsVisitor visit: aPWBASTExpressionAction
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTFunctionInvocation: aPWBASTFunctionInvocation [
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTFunctionInvocation)
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTIfMultiLine: aPWBASTIfMultiLine [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTIfMultiLine: aPWBASTIfMultiLine
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTIfSingleLine: aPWBASTIfSingleLine [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTIfSingleLine: aPWBASTIfSingleLine
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTRegularMethodInvocation: aPWBASTRegularMethodInvocation [
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTRegularMethodInvocation)
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTReturnStatement: aPWBASTReturnStatement [
	self auxiliaryVisitor: PWBExpressionsVisitor visit: aPWBASTReturnStatement expression.
"
	| famixFunctionReturn codeRewriteVisitor |
	famixFunctionReturn := self
		createEntity: FamixPWBFunctionReturn
		withAnchorFrom: aPWBASTReturnStatement.
	famixFunctionReturn
		behavioral: self currentEntity;
		type: self currentEntity returnType;
		name: self currentEntity name.
	self visit: aPWBASTReturnStatement expression.
	codeRewriteVisitor := PWBCodeRewriteVisitor new.
	codeRewriteVisitor visit: aPWBASTReturnStatement expression.
	famixFunctionReturn returnValue: codeRewriteVisitor stream.
	^ famixFunctionReturn
"
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTVariableDeclarations: aPWBASTVariableDeclarations [
	(self auxiliaryVisitor: PWBVariableDeclarationVisitor)
		defaultFamixClass: FamixPWBLocalVariable ;
		visit: aPWBASTVariableDeclarations
]
