Class {
	#name : #PWBASTAbstractVisitor,
	#superclass : #Object,
	#instVars : [
		'currentAttributeAccess'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #helpers }
PWBASTAbstractVisitor >> visit: aChildNode [
	^ aChildNode ifNotNil: [ aChildNode acceptVisitor: self ]
]

{ #category : #helpers }
PWBASTAbstractVisitor >> visitAll: childrenNodes [
	childrenNodes
		ifNotNil: [ childrenNodes do: [ :aChildNode | aChildNode acceptVisitor: self ] ]
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTAccess: aMrlPWBASTAccess [
	<generated>
	self visit: aMrlPWBASTAccess accessed.
	self visit: aMrlPWBASTAccess arrayPosition.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTAccessModifier: anMrlPWBASTAccessModifier [
	<generated>
	^ anMrlPWBASTAccessModifier accessModifier
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTAccessModifierDefiner: aMrlPWBASTAccessModifierDefiner [
	<generated>
	self visit: aMrlPWBASTAccessModifierDefiner accessModifier.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTAccessOrType: aMrlPWBASTAccessOrType [
	<generated>
	self visit: aMrlPWBASTAccessOrType accessOrType.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTArgument: aMrlPWBASTArgument [
	<generated>
	self visit: aMrlPWBASTArgument argumentOption.
	self visit: aMrlPWBASTArgument type.
	self visit: aMrlPWBASTArgument identifier.
	self visit: aMrlPWBASTArgument arrayWithSize.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTArgumentOption: anMrlPWBASTArgumentOption [
	<generated>
	^ anMrlPWBASTArgumentOption argumentOption
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTArguments: aMrlPWBASTArguments [
	<generated>
	self visitAll: aMrlPWBASTArguments arguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTArray: aMrlPWBASTArray [
	<generated>
	self visitAll: aMrlPWBASTArray expressions.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTArrayDesignation: anMrlPWBASTArrayDesignation [
	<generated>
	^ anMrlPWBASTArrayDesignation arrayDesignation
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTArrayPosition: aMrlPWBASTArrayPosition [
	<generated>
	self visitAll: aMrlPWBASTArrayPosition expressions.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTArrayWithSize: aMrlPWBASTArrayWithSize [
	<generated>
	self visitAll: aMrlPWBASTArrayWithSize expressions.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTAssignation: aMrlPWBASTAssignation [
	<generated>
	self visit: aMrlPWBASTAssignation expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTAssignationStatement: aMrlPWBASTAssignationStatement [
	<generated>
	self visit: aMrlPWBASTAssignationStatement accessOrType.
	self visit: aMrlPWBASTAssignationStatement expressionAction.
	self visit: aMrlPWBASTAssignationStatement assignation.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTAttribute: aMrlPWBASTAttribute [
	<generated>
	self visit: aMrlPWBASTAttribute accessModifier.
	self visit: aMrlPWBASTAttribute variableDeclarations.
	self visit: aMrlPWBASTAttribute descriptor.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTAttributeAccess: aMrlPWBASTAttributeAccess [
	<generated>
	self visit: aMrlPWBASTAttributeAccess uncheckedIdentifier.
	self visit: aMrlPWBASTAttributeAccess arrayInformation.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTAttributes: aMrlPWBASTAttributes [
	<generated>
	self visitAll: aMrlPWBASTAttributes attributes.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTBasicType: anMrlPWBASTBasicType [
	<generated>
	^ anMrlPWBASTBasicType basicType
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTBehaviouralAlias: aMrlPWBASTBehaviouralAlias [
	<generated>
	self visit: aMrlPWBASTBehaviouralAlias alias.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTBehaviouralLibrary: aMrlPWBASTBehaviouralLibrary [
	<generated>
	self visit: aMrlPWBASTBehaviouralLibrary libraryFile.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTBehaviouralOption: aMrlPWBASTBehaviouralOption [
	<generated>
	self visit: aMrlPWBASTBehaviouralOption behaviouralOption.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTBooleanValue: anMrlPWBASTBooleanValue [
	<generated>
	^ anMrlPWBASTBooleanValue booleanValue
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTCallStatement: aMrlPWBASTCallStatement [
	<generated>
	self visit: aMrlPWBASTCallStatement variable.
	self visit: aMrlPWBASTCallStatement identifier.
	self visit: aMrlPWBASTCallStatement eventType.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTCase: aMrlPWBASTCase [
	<generated>
	self visit: aMrlPWBASTCase case.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTCaseElse: aMrlPWBASTCaseElse [
	<generated>
	self visit: aMrlPWBASTCaseElse statements.
	self visit: aMrlPWBASTCaseElse statement.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTCatchBlock: aMrlPWBASTCatchBlock [
	<generated>
	self visit: aMrlPWBASTCatchBlock arguments.
	self visit: aMrlPWBASTCatchBlock statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTChooseCase: aMrlPWBASTChooseCase [
	<generated>
	self visit: aMrlPWBASTChooseCase expression.
	self visitAll: aMrlPWBASTChooseCase cases.
	self visit: aMrlPWBASTChooseCase caseElse.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTCloseSqlCursor: aMrlPWBASTCloseSqlCursor [
	<generated>
	self visit: aMrlPWBASTCloseSqlCursor identifier.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTCommonFile: aMrlPWBASTCommonFile [
	<generated>
	self visitAll: aMrlPWBASTCommonFile fileStatements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTCondition: aMrlPWBASTCondition [
	<generated>
	self visit: aMrlPWBASTCondition expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTConstant: anMrlPWBASTConstant [
	<generated>
	^ anMrlPWBASTConstant constant
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTContinueStatement: anMrlPWBASTContinueStatement [
	<generated>
	^ anMrlPWBASTContinueStatement continueStatement
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTCreateInstruction: aMrlPWBASTCreateInstruction [
	<generated>
	self visit: aMrlPWBASTCreateInstruction variable.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTCreateUsingInstruction: aMrlPWBASTCreateUsingInstruction [
	<generated>
	self visit: aMrlPWBASTCreateUsingInstruction expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTCustomCallStatement: aMrlPWBASTCustomCallStatement [
	<generated>
	self visit: aMrlPWBASTCustomCallStatement identifier.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTCustomType: aMrlPWBASTCustomType [
	<generated>
	self visit: aMrlPWBASTCustomType identifier.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTDeclareCursor: aMrlPWBASTDeclareCursor [
	<generated>
	self visit: aMrlPWBASTDeclareCursor identifier.
	self visit: aMrlPWBASTDeclareCursor target.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTDeclareProcedure: aMrlPWBASTDeclareProcedure [
	<generated>
	self visit: aMrlPWBASTDeclareProcedure procedureName.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTDefaultEventType: anMrlPWBASTDefaultEventType [
	<generated>
	^ anMrlPWBASTDefaultEventType defaultEventType
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTDefaultVariable: anMrlPWBASTDefaultVariable [
	<generated>
	^ anMrlPWBASTDefaultVariable defaultVariable
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTDescriptor: aMrlPWBASTDescriptor [
	<generated>
	self visit: aMrlPWBASTDescriptor expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTDestroyStatement: aMrlPWBASTDestroyStatement [
	<generated>
	self visit: aMrlPWBASTDestroyStatement expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTDoLoopUntil: aMrlPWBASTDoLoopUntil [
	<generated>
	self visit: aMrlPWBASTDoLoopUntil statements.
	self visit: aMrlPWBASTDoLoopUntil expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTDoLoopWhile: aMrlPWBASTDoLoopWhile [
	<generated>
	self visit: aMrlPWBASTDoLoopWhile statements.
	self visit: aMrlPWBASTDoLoopWhile expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTDoUntilLoop: aMrlPWBASTDoUntilLoop [
	<generated>
	self visit: aMrlPWBASTDoUntilLoop expression.
	self visit: aMrlPWBASTDoUntilLoop statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTDoWhileLoop: aMrlPWBASTDoWhileLoop [
	<generated>
	self visit: aMrlPWBASTDoWhileLoop expression.
	self visit: aMrlPWBASTDoWhileLoop statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTDynamicMethodInvocation: aMrlPWBASTDynamicMethodInvocation [
	<generated>
	self visit: aMrlPWBASTDynamicMethodInvocation uncheckedIdentifier.
	self visit: aMrlPWBASTDynamicMethodInvocation functionArguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTElse: aMrlPWBASTElse [
	<generated>
	self visit: aMrlPWBASTElse statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTElseIf: aMrlPWBASTElseIf [
	<generated>
	self visit: aMrlPWBASTElseIf expression.
	self visit: aMrlPWBASTElseIf statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTElseOnLine: aMrlPWBASTElseOnLine [
	<generated>
	self visit: aMrlPWBASTElseOnLine statement.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTEndForward: anMrlPWBASTEndForward [
	<generated>
	^ anMrlPWBASTEndForward endForward
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTEventAttribute: aMrlPWBASTEventAttribute [
	<generated>
	self visit: aMrlPWBASTEventAttribute returnType.
	self visit: aMrlPWBASTEventAttribute eventName.
	self visit: aMrlPWBASTEventAttribute attribute.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTEventDeclaration: aMrlPWBASTEventDeclaration [
	<generated>
	self visit: aMrlPWBASTEventDeclaration returnType.
	self visit: aMrlPWBASTEventDeclaration eventReferenceName.
	self visit: aMrlPWBASTEventDeclaration customCallStatement.
	self visit: aMrlPWBASTEventDeclaration statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTEventInvocation: aMrlPWBASTEventInvocation [
	<generated>
	self visit: aMrlPWBASTEventInvocation identifier.
	self visit: aMrlPWBASTEventInvocation functionArguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTEventLong: aMrlPWBASTEventLong [
	<generated>
	self visit: aMrlPWBASTEventLong functionArgument.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTEventName: aMrlPWBASTEventName [
	<generated>
	self visit: aMrlPWBASTEventName eventName.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTEventReferenceName: aMrlPWBASTEventReferenceName [
	<generated>
	self visit: aMrlPWBASTEventReferenceName objectClass.
	self visit: aMrlPWBASTEventReferenceName eventName.
	self visit: aMrlPWBASTEventReferenceName arguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTEventTriggeringOrPosting: aMrlPWBASTEventTriggeringOrPosting [
	<generated>
	self visitAll: aMrlPWBASTEventTriggeringOrPosting identifiers.
	self visitAll: aMrlPWBASTEventTriggeringOrPosting arrayPositions.
	self visit: aMrlPWBASTEventTriggeringOrPosting eventName.
	self visit: aMrlPWBASTEventTriggeringOrPosting eventWord.
	self visit: aMrlPWBASTEventTriggeringOrPosting eventLong.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTEventType: aMrlPWBASTEventType [
	<generated>
	self visit: aMrlPWBASTEventType eventType.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTEventWord: aMrlPWBASTEventWord [
	<generated>
	self visit: aMrlPWBASTEventWord functionArgument.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTExecuteProcedure: aMrlPWBASTExecuteProcedure [
	<generated>
	self visit: aMrlPWBASTExecuteProcedure procedureName.
	self visit: aMrlPWBASTExecuteProcedure usingClause.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTExitStatement: anMrlPWBASTExitStatement [
	<generated>
	^ anMrlPWBASTExitStatement exitStatement
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTExpression: aMrlPWBASTExpression [
	<generated>
	self visit: aMrlPWBASTExpression expression.
	self visit: aMrlPWBASTExpression expressionAction.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTExpressionAction: aMrlPWBASTExpressionAction [
	<generated>
	self visit: aMrlPWBASTExpressionAction action.
	self visit: aMrlPWBASTExpressionAction expressionAction.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTExpressionList: aMrlPWBASTExpressionList [
	<generated>
	self visitAll: aMrlPWBASTExpressionList expressions.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTExpressionTerm: aMrlPWBASTExpressionTerm [
	<generated>
	self visit: aMrlPWBASTExpressionTerm expressionTerm.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTExpressionWithSign: aMrlPWBASTExpressionWithSign [
	<generated>
	self visit: aMrlPWBASTExpressionWithSign expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTFile: aMrlPWBASTFile [
	<generated>
	self visit: aMrlPWBASTFile invocation.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTFinallyBlock: aMrlPWBASTFinallyBlock [
	<generated>
	self visit: aMrlPWBASTFinallyBlock statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTForLoop: aMrlPWBASTForLoop [
	<generated>
	self visit: aMrlPWBASTForLoop assignationStatement.
	self visit: aMrlPWBASTForLoop endExpression.
	self visit: aMrlPWBASTForLoop stepExpression.
	self visit: aMrlPWBASTForLoop statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTForwardDeclaration: aMrlPWBASTForwardDeclaration [
	<generated>
	self visitAll: aMrlPWBASTForwardDeclaration typeDeclarations.
	self visit: aMrlPWBASTForwardDeclaration endForward.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTFromClause: aMrlPWBASTFromClause [
	<generated>
	self visit: aMrlPWBASTFromClause customType.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTFullInvocation: aMrlPWBASTFullInvocation [
	<generated>
	self visit: aMrlPWBASTFullInvocation fullInvocation.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTFunctionArgument: aMrlPWBASTFunctionArgument [
	<generated>
	self visit: aMrlPWBASTFunctionArgument argumentOption.
	self visit: aMrlPWBASTFunctionArgument expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTFunctionArguments: aMrlPWBASTFunctionArguments [
	<generated>
	self visitAll: aMrlPWBASTFunctionArguments functionArguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTFunctionDeclaration: aMrlPWBASTFunctionDeclaration [
	<generated>
	self visit: aMrlPWBASTFunctionDeclaration functionSignature.
	self visitAll: aMrlPWBASTFunctionDeclaration behaviouralOptions.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTFunctionDefinition: aMrlPWBASTFunctionDefinition [
	<generated>
	self visit: aMrlPWBASTFunctionDefinition functionSignature.
	self visit: aMrlPWBASTFunctionDefinition statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTFunctionInvocation: aMrlPWBASTFunctionInvocation [
	<generated>
	self visit: aMrlPWBASTFunctionInvocation defaultVariable.
	self visit: aMrlPWBASTFunctionInvocation functionName.
	self visit: aMrlPWBASTFunctionInvocation functionArguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTFunctionSignature: aMrlPWBASTFunctionSignature [
	<generated>
	self visit: aMrlPWBASTFunctionSignature accessModifier.
	self visit: aMrlPWBASTFunctionSignature type.
	self visit: aMrlPWBASTFunctionSignature identifier.
	self visit: aMrlPWBASTFunctionSignature arguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTGlobalVariableDeclaration: aMrlPWBASTGlobalVariableDeclaration [
	<generated>
	self visit: aMrlPWBASTGlobalVariableDeclaration type.
	self visit: aMrlPWBASTGlobalVariableDeclaration variable.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTGlobalVariables: aMrlPWBASTGlobalVariables [
	<generated>
	self visit: aMrlPWBASTGlobalVariables attributes.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTGotoStatement: aMrlPWBASTGotoStatement [
	<generated>
	self visit: aMrlPWBASTGotoStatement identifier.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTIdentifier: anMrlPWBASTIdentifier [
	<generated>
	^ anMrlPWBASTIdentifier identifier
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTIfMultiLine: aMrlPWBASTIfMultiLine [
	<generated>
	self visit: aMrlPWBASTIfMultiLine condition.
	self visit: aMrlPWBASTIfMultiLine statements.
	self visitAll: aMrlPWBASTIfMultiLine elseIfs.
	self visit: aMrlPWBASTIfMultiLine else.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTIfSingleLine: aMrlPWBASTIfSingleLine [
	<generated>
	self visit: aMrlPWBASTIfSingleLine condition.
	self visit: aMrlPWBASTIfSingleLine statement.
	self visit: aMrlPWBASTIfSingleLine elseOnLine.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTIfStatement: aMrlPWBASTIfStatement [
	<generated>
	self visit: aMrlPWBASTIfStatement ifStatement.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTIntervalExpression: aMrlPWBASTIntervalExpression [
	<generated>
	self visit: aMrlPWBASTIntervalExpression from.
	self visit: aMrlPWBASTIntervalExpression to.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTMethodInvocation: aMrlPWBASTMethodInvocation [
	<generated>
	self visit: aMrlPWBASTMethodInvocation methodInvocation.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTMrlInvocationLine: aMrlPWBASTMrlInvocationLine [
	<generated>
	self visitAll: aMrlPWBASTMrlInvocationLine mrlInvocationLines.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTMrlMethodInvocation: aMrlPWBASTMrlMethodInvocation [
	<generated>
	self visit: aMrlPWBASTMrlMethodInvocation expressionTerm.
	self visit: aMrlPWBASTMrlMethodInvocation expressionAction.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTMrlSignatures: aMrlPWBASTMrlSignatures [
	<generated>
	self visit: aMrlPWBASTMrlSignatures mrlSignatures.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTMultiLineCase: aMrlPWBASTMultiLineCase [
	<generated>
	self visit: aMrlPWBASTMultiLineCase expressionList.
	self visit: aMrlPWBASTMultiLineCase statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTNotExpression: aMrlPWBASTNotExpression [
	<generated>
	self visit: aMrlPWBASTNotExpression expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTNumber: anMrlPWBASTNumber [
	<generated>
	^ anMrlPWBASTNumber number
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTOpenSqlCursor: aMrlPWBASTOpenSqlCursor [
	<generated>
	self visit: aMrlPWBASTOpenSqlCursor identifier.
	self visit: aMrlPWBASTOpenSqlCursor descriptor.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTOperatorExpression: aMrlPWBASTOperatorExpression [
	<generated>
	self visit: aMrlPWBASTOperatorExpression left.
	self visit: aMrlPWBASTOperatorExpression expressionAction.
	self visit: aMrlPWBASTOperatorExpression right.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTOppositeFullInvocation: anMrlPWBASTOppositeFullInvocation [
	<generated>
	^ anMrlPWBASTOppositeFullInvocation oppositeFullInvocation
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTParametrizedType: anMrlPWBASTParametrizedType [
	<generated>
	^ anMrlPWBASTParametrizedType parametrizedType
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTParenthesedArray: aMrlPWBASTParenthesedArray [
	<generated>
	self visit: aMrlPWBASTParenthesedArray expression.
	self visitAll: aMrlPWBASTParenthesedArray expressions.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTParenthesedExpression: aMrlPWBASTParenthesedExpression [
	<generated>
	self visit: aMrlPWBASTParenthesedExpression expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTPostFixOperator: aMrlPWBASTPostFixOperator [
	<generated>
	self visit: aMrlPWBASTPostFixOperator expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTPrepareSQL: aMrlPWBASTPrepareSQL [
	<generated>
	self visit: aMrlPWBASTPrepareSQL identifier.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTProgramStep: aMrlPWBASTProgramStep [
	<generated>
	self visit: aMrlPWBASTProgramStep identifier.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTPrototypesDeclaration: aMrlPWBASTPrototypesDeclaration [
	<generated>
	self visitAll: aMrlPWBASTPrototypesDeclaration declarations.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTRegularMethodInvocation: aMrlPWBASTRegularMethodInvocation [
	<generated>
	self visit: aMrlPWBASTRegularMethodInvocation uncheckedIdentifier.
	self visit: aMrlPWBASTRegularMethodInvocation functionArguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTReturnStatement: aMrlPWBASTReturnStatement [
	<generated>
	self visit: aMrlPWBASTReturnStatement expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTSharedVariables: aMrlPWBASTSharedVariables [
	<generated>
	self visit: aMrlPWBASTSharedVariables attributes.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTSingleLineCase: aMrlPWBASTSingleLineCase [
	<generated>
	self visit: aMrlPWBASTSingleLineCase expressionList.
	self visit: aMrlPWBASTSingleLineCase statement.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTSpecialStatement: aMrlPWBASTSpecialStatement [
	<generated>
	self visit: aMrlPWBASTSpecialStatement specialStatement.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTSpecialVariable: aMrlPWBASTSpecialVariable [
	<generated>
	self visit: aMrlPWBASTSpecialVariable this.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTSqlCommitStatement: aMrlPWBASTSqlCommitStatement [
	<generated>
	self visit: aMrlPWBASTSqlCommitStatement usingClause.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTSqlQuery: anMrlPWBASTSqlQuery [
	<generated>
	^ anMrlPWBASTSqlQuery sqlQuery
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTSqlRollbackStatement: aMrlPWBASTSqlRollbackStatement [
	<generated>
	self visit: aMrlPWBASTSqlRollbackStatement usingClause.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTSqlVariable: aMrlPWBASTSqlVariable [
	<generated>
	self visit: aMrlPWBASTSqlVariable identifier.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTStatement: aMrlPWBASTStatement [
	<generated>
	self visit: aMrlPWBASTStatement statement.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTStatements: aMrlPWBASTStatements [
	<generated>
	self visitAll: aMrlPWBASTStatements statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTString: anMrlPWBASTString [
	<generated>
	^ anMrlPWBASTString string
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTSubroutineDeclaration: aMrlPWBASTSubroutineDeclaration [
	<generated>
	self visit: aMrlPWBASTSubroutineDeclaration subroutineSignature.
	self visitAll: aMrlPWBASTSubroutineDeclaration behaviouralOptions.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTSubroutineDefinition: aMrlPWBASTSubroutineDefinition [
	<generated>
	self visit: aMrlPWBASTSubroutineDefinition subroutineSignature.
	self visit: aMrlPWBASTSubroutineDefinition statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTSubroutineSignature: aMrlPWBASTSubroutineSignature [
	<generated>
	self visit: aMrlPWBASTSubroutineSignature accessModifier.
	self visit: aMrlPWBASTSubroutineSignature identifier.
	self visit: aMrlPWBASTSubroutineSignature arguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTThis: anMrlPWBASTThis [
	<generated>
	^ anMrlPWBASTThis this
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTTime: anMrlPWBASTTime [
	<generated>
	^ anMrlPWBASTTime time
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTTransactionObject: aMrlPWBASTTransactionObject [
	<generated>
	self visit: aMrlPWBASTTransactionObject identifier.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTTriggerDefinition: aMrlPWBASTTriggerDefinition [
	<generated>
	self visit: aMrlPWBASTTriggerDefinition identifier.
	self visit: aMrlPWBASTTriggerDefinition eventType.
	self visit: aMrlPWBASTTriggerDefinition statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTTryCatch: aMrlPWBASTTryCatch [
	<generated>
	self visit: aMrlPWBASTTryCatch statements.
	self visitAll: aMrlPWBASTTryCatch catchBlocks.
	self visit: aMrlPWBASTTryCatch finallyBlock.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTType: aMrlPWBASTType [
	<generated>
	self visit: aMrlPWBASTType type.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTTypeDeclaration: aMrlPWBASTTypeDeclaration [
	<generated>
	self visit: aMrlPWBASTTypeDeclaration type.
	self visit: aMrlPWBASTTypeDeclaration fromClause.
	self visit: aMrlPWBASTTypeDeclaration eventType.
	self visit: aMrlPWBASTTypeDeclaration withinClause.
	self visit: aMrlPWBASTTypeDeclaration descriptor.
	self visit: aMrlPWBASTTypeDeclaration attributes.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTTypePrototypes: aMrlPWBASTTypePrototypes [
	<generated>
	self visitAll: aMrlPWBASTTypePrototypes declarations.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTTypeVariable: aMrlPWBASTTypeVariable [
	<generated>
	self visit: aMrlPWBASTTypeVariable attributes.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTUncheckedIdentifier: anMrlPWBASTUncheckedIdentifier [
	<generated>
	^ anMrlPWBASTUncheckedIdentifier uncheckedIdentifier
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTUsingClause: aMrlPWBASTUsingClause [
	<generated>
	self visit: aMrlPWBASTUsingClause transactionObject.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTVariable: aMrlPWBASTVariable [
	<generated>
	self visit: aMrlPWBASTVariable identifier.
	self visit: aMrlPWBASTVariable arrayDefinition.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTVariableAssignation: aMrlPWBASTVariableAssignation [
	<generated>
	self visit: aMrlPWBASTVariableAssignation variable.
	self visit: aMrlPWBASTVariableAssignation assignation.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTVariableDeclarations: aMrlPWBASTVariableDeclarations [
	<generated>
	self visit: aMrlPWBASTVariableDeclarations type.
	self visitAll: aMrlPWBASTVariableDeclarations variableAssignations.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitMrlPWBASTWithinClause: aMrlPWBASTWithinClause [
	<generated>
	self visit: aMrlPWBASTWithinClause customType.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTAccess: aPWBASTAccess [
	<generated>
	self visit: aPWBASTAccess accessed.
	self visit: aPWBASTAccess arrayPosition.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTAccessModifier: anPWBASTAccessModifier [
	<generated>
	^ anPWBASTAccessModifier accessModifier
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTAccessModifierDefiner: aPWBASTAccessModifierDefiner [
	<generated>
	self visit: aPWBASTAccessModifierDefiner accessModifier.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTAccessOrType: aPWBASTAccessOrType [
	<generated>
	self visit: aPWBASTAccessOrType accessOrType.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTArgument: aPWBASTArgument [
	<generated>
	self visit: aPWBASTArgument argumentOption.
	self visit: aPWBASTArgument type.
	self visit: aPWBASTArgument identifier.
	self visit: aPWBASTArgument arrayWithSize.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTArgumentOption: anPWBASTArgumentOption [
	<generated>
	^ anPWBASTArgumentOption argumentOption
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTArguments: aPWBASTArguments [
	<generated>
	self visitAll: aPWBASTArguments arguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTArray: aPWBASTArray [
	<generated>
	self visitAll: aPWBASTArray expressions.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTArrayDesignation: anPWBASTArrayDesignation [
	<generated>
	^ anPWBASTArrayDesignation arrayDesignation
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTArrayPosition: aPWBASTArrayPosition [
	<generated>
	self visitAll: aPWBASTArrayPosition expressions.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTArrayWithInterval: aPWBASTArrayWithInterval [
	<generated>
	self visit: aPWBASTArrayWithInterval startIndex.
	self visit: aPWBASTArrayWithInterval endIndex.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTArrayWithSize: aPWBASTArrayWithSize [
	<generated>
	self visitAll: aPWBASTArrayWithSize expressions.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTAssignation: aPWBASTAssignation [
	<generated>
	self visit: aPWBASTAssignation expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTAssignationStatement: aPWBASTAssignationStatement [
	<generated>
	self visit: aPWBASTAssignationStatement accessOrType.
	self visit: aPWBASTAssignationStatement expressionAction.
	self visit: aPWBASTAssignationStatement assignation.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTAttribute: aPWBASTAttribute [
	<generated>
	self visit: aPWBASTAttribute accessModifier.
	self visit: aPWBASTAttribute variableDeclarations.
	self visit: aPWBASTAttribute descriptor.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTAttributeAccess: aPWBASTAttributeAccess [
	<generated>
	self visit: aPWBASTAttributeAccess uncheckedIdentifier.
	self visit: aPWBASTAttributeAccess arrayInformation.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTAttributes: aPWBASTAttributes [
	<generated>
	self visitAll: aPWBASTAttributes attributes.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTBasicType: anPWBASTBasicType [
	<generated>
	^ anPWBASTBasicType basicType
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTBehaviouralAlias: aPWBASTBehaviouralAlias [
	<generated>
	self visit: aPWBASTBehaviouralAlias alias.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTBehaviouralLibrary: aPWBASTBehaviouralLibrary [
	<generated>
	self visit: aPWBASTBehaviouralLibrary libraryFile.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTBehaviouralOption: aPWBASTBehaviouralOption [
	<generated>
	self visit: aPWBASTBehaviouralOption behaviouralOption.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTBooleanValue: anPWBASTBooleanValue [
	<generated>
	^ anPWBASTBooleanValue booleanValue
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTCallStatement: aPWBASTCallStatement [
	<generated>
	self visit: aPWBASTCallStatement variable.
	self visit: aPWBASTCallStatement identifier.
	self visit: aPWBASTCallStatement eventType.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTCase: aPWBASTCase [
	<generated>
	self visit: aPWBASTCase case.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTCaseElse: aPWBASTCaseElse [
	<generated>
	self visit: aPWBASTCaseElse statements.
	self visit: aPWBASTCaseElse statement.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTCatchBlock: aPWBASTCatchBlock [
	<generated>
	self visit: aPWBASTCatchBlock arguments.
	self visit: aPWBASTCatchBlock statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTChooseCase: aPWBASTChooseCase [
	<generated>
	self visit: aPWBASTChooseCase expression.
	self visitAll: aPWBASTChooseCase cases.
	self visit: aPWBASTChooseCase caseElse.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTCloseSqlCursor: aPWBASTCloseSqlCursor [
	<generated>
	self visit: aPWBASTCloseSqlCursor identifier.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTColumn: aPWBASTColumn [
	<generated>
	self visit: aPWBASTColumn columnDefinition.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTColumnDefinition: aPWBASTColumnDefinition [
	<generated>
	self visit: aPWBASTColumnDefinition options.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTColumnNameOption: aPWBASTColumnNameOption [
	<generated>
	self visit: aPWBASTColumnNameOption expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTColumnTypeOption: aPWBASTColumnTypeOption [
	<generated>
	self visit: aPWBASTColumnTypeOption expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTCommonFile: aPWBASTCommonFile [
	<generated>
	self visitAll: aPWBASTCommonFile fileStatements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTCondition: aPWBASTCondition [
	<generated>
	self visit: aPWBASTCondition expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTConstant: anPWBASTConstant [
	<generated>
	^ anPWBASTConstant constant
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTContinueStatement: anPWBASTContinueStatement [
	<generated>
	^ anPWBASTContinueStatement continueStatement
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTCreateInstruction: aPWBASTCreateInstruction [
	<generated>
	self visit: aPWBASTCreateInstruction variable.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTCreateUsingInstruction: aPWBASTCreateUsingInstruction [
	<generated>
	self visit: aPWBASTCreateUsingInstruction expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTCustomCallStatement: aPWBASTCustomCallStatement [
	<generated>
	self visit: aPWBASTCustomCallStatement identifier.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTCustomType: aPWBASTCustomType [
	<generated>
	self visit: aPWBASTCustomType identifier.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTDataComponent: anPWBASTDataComponent [
	<generated>
	^ anPWBASTDataComponent dataComponent
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTDataWindow: aPWBASTDataWindow [
	<generated>
	self visit: aPWBASTDataWindow parameters.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTDataWindowFile: aPWBASTDataWindowFile [
	<generated>
	self visitAll: aPWBASTDataWindowFile fileStatements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTDeclareCursor: aPWBASTDeclareCursor [
	<generated>
	self visit: aPWBASTDeclareCursor identifier.
	self visit: aPWBASTDeclareCursor target.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTDeclareProcedure: aPWBASTDeclareProcedure [
	<generated>
	self visit: aPWBASTDeclareProcedure procedureName.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTDefaultEventType: anPWBASTDefaultEventType [
	<generated>
	^ anPWBASTDefaultEventType defaultEventType
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTDefaultVariable: anPWBASTDefaultVariable [
	<generated>
	^ anPWBASTDefaultVariable defaultVariable
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTDescriptor: aPWBASTDescriptor [
	<generated>
	self visit: aPWBASTDescriptor expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTDestroyStatement: aPWBASTDestroyStatement [
	<generated>
	self visit: aPWBASTDestroyStatement expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTDoLoopUntil: aPWBASTDoLoopUntil [
	<generated>
	self visit: aPWBASTDoLoopUntil statements.
	self visit: aPWBASTDoLoopUntil expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTDoLoopWhile: aPWBASTDoLoopWhile [
	<generated>
	self visit: aPWBASTDoLoopWhile statements.
	self visit: aPWBASTDoLoopWhile expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTDoUntilLoop: aPWBASTDoUntilLoop [
	<generated>
	self visit: aPWBASTDoUntilLoop expression.
	self visit: aPWBASTDoUntilLoop statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTDoWhileLoop: aPWBASTDoWhileLoop [
	<generated>
	self visit: aPWBASTDoWhileLoop expression.
	self visit: aPWBASTDoWhileLoop statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTDynamicMethodInvocation: aPWBASTDynamicMethodInvocation [
	<generated>
	self visit: aPWBASTDynamicMethodInvocation uncheckedIdentifier.
	self visit: aPWBASTDynamicMethodInvocation functionArguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTElse: aPWBASTElse [
	<generated>
	self visit: aPWBASTElse statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTElseIf: aPWBASTElseIf [
	<generated>
	self visit: aPWBASTElseIf expression.
	self visit: aPWBASTElseIf statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTElseOnLine: aPWBASTElseOnLine [
	<generated>
	self visit: aPWBASTElseOnLine statement.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTEndForward: anPWBASTEndForward [
	<generated>
	^ anPWBASTEndForward endForward
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTEventAttribute: aPWBASTEventAttribute [
	<generated>
	self visit: aPWBASTEventAttribute returnType.
	self visit: aPWBASTEventAttribute eventName.
	self visit: aPWBASTEventAttribute attribute.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTEventDeclaration: aPWBASTEventDeclaration [
	<generated>
	self visit: aPWBASTEventDeclaration returnType.
	self visit: aPWBASTEventDeclaration eventReferenceName.
	self visit: aPWBASTEventDeclaration customCallStatement.
	self visit: aPWBASTEventDeclaration statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTEventInvocation: aPWBASTEventInvocation [
	<generated>
	self visit: aPWBASTEventInvocation identifier.
	self visit: aPWBASTEventInvocation functionArguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTEventLong: aPWBASTEventLong [
	<generated>
	self visit: aPWBASTEventLong functionArgument.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTEventName: aPWBASTEventName [
	<generated>
	self visit: aPWBASTEventName eventName.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTEventReferenceName: aPWBASTEventReferenceName [
	<generated>
	self visit: aPWBASTEventReferenceName objectClass.
	self visit: aPWBASTEventReferenceName eventName.
	self visit: aPWBASTEventReferenceName arguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTEventTriggeringOrPosting: aPWBASTEventTriggeringOrPosting [
	<generated>
	self visitAll: aPWBASTEventTriggeringOrPosting identifiers.
	self visitAll: aPWBASTEventTriggeringOrPosting arrayPositions.
	self visit: aPWBASTEventTriggeringOrPosting eventName.
	self visit: aPWBASTEventTriggeringOrPosting eventWord.
	self visit: aPWBASTEventTriggeringOrPosting eventLong.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTEventType: aPWBASTEventType [
	<generated>
	self visit: aPWBASTEventType eventType.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTEventWord: aPWBASTEventWord [
	<generated>
	self visit: aPWBASTEventWord functionArgument.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTExecuteProcedure: aPWBASTExecuteProcedure [
	<generated>
	self visit: aPWBASTExecuteProcedure procedureName.
	self visit: aPWBASTExecuteProcedure usingClause.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTExitStatement: anPWBASTExitStatement [
	<generated>
	^ anPWBASTExitStatement exitStatement
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTExport: aPWBASTExport [
	<generated>
	self visit: aPWBASTExport formatType.
	self visit: aPWBASTExport parameters.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTExpression: aPWBASTExpression [
	<generated>
	self visit: aPWBASTExpression expression.
	self visit: aPWBASTExpression expressionAction.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTExpressionAction: aMrlPWBASTExpressionAction [
	<generated>
	self visit: aMrlPWBASTExpressionAction action.
	self visit: aMrlPWBASTExpressionAction expressionAction.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTExpressionList: aPWBASTExpressionList [
	<generated>
	self visitAll: aPWBASTExpressionList expressions.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTExpressionTerm: aPWBASTExpressionTerm [
	<generated>
	self visit: aPWBASTExpressionTerm expressionTerm.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTExpressionWithSign: aPWBASTExpressionWithSign [
	<generated>
	self visit: aPWBASTExpressionWithSign expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTFile: aPWBASTFile [
	<generated>
	self visit: aPWBASTFile content.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTFinallyBlock: aPWBASTFinallyBlock [
	<generated>
	self visit: aPWBASTFinallyBlock statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTForLoop: aPWBASTForLoop [
	<generated>
	self visit: aPWBASTForLoop assignationStatement.
	self visit: aPWBASTForLoop endExpression.
	self visit: aPWBASTForLoop stepExpression.
	self visit: aPWBASTForLoop statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTFormatType: anPWBASTFormatType [
	<generated>
	^ anPWBASTFormatType formatType
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTForwardDeclaration: aPWBASTForwardDeclaration [
	<generated>
	self visitAll: aPWBASTForwardDeclaration typeDeclarations.
	self visit: aPWBASTForwardDeclaration endForward.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTFromClause: aPWBASTFromClause [
	<generated>
	self visit: aPWBASTFromClause customType.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTFullInvocation: aPWBASTFullInvocation [
	<generated>
	self visit: aPWBASTFullInvocation fullInvocation.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTFunctionArgument: aPWBASTFunctionArgument [
	<generated>
	self visit: aPWBASTFunctionArgument argumentOption.
	self visit: aPWBASTFunctionArgument expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTFunctionArguments: aPWBASTFunctionArguments [
	<generated>
	self visitAll: aPWBASTFunctionArguments functionArguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTFunctionDeclaration: aPWBASTFunctionDeclaration [
	<generated>
	self visit: aPWBASTFunctionDeclaration functionSignature.
	self visitAll: aPWBASTFunctionDeclaration behaviouralOptions.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTFunctionDefinition: aPWBASTFunctionDefinition [
	<generated>
	self visit: aPWBASTFunctionDefinition functionSignature.
	self visit: aPWBASTFunctionDefinition statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTFunctionInvocation: aPWBASTFunctionInvocation [
	<generated>
	self visit: aPWBASTFunctionInvocation defaultVariable.
	self visit: aPWBASTFunctionInvocation functionName.
	self visit: aPWBASTFunctionInvocation functionArguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTFunctionSignature: aPWBASTFunctionSignature [
	<generated>
	self visit: aPWBASTFunctionSignature accessModifier.
	self visit: aPWBASTFunctionSignature type.
	self visit: aPWBASTFunctionSignature identifier.
	self visit: aPWBASTFunctionSignature arguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTGenerator: aPWBASTGenerator [
	<generated>
	self visit: aPWBASTGenerator generatorToken.
	self visit: aPWBASTGenerator parameters.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTGeneratorToken: anPWBASTGeneratorToken [
	<generated>
	^ anPWBASTGeneratorToken generatorToken
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTGlobalVariableDeclaration: aPWBASTGlobalVariableDeclaration [
	<generated>
	self visit: aPWBASTGlobalVariableDeclaration type.
	self visit: aPWBASTGlobalVariableDeclaration variable.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTGlobalVariables: aPWBASTGlobalVariables [
	<generated>
	self visit: aPWBASTGlobalVariables attributes.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTGotoStatement: aPWBASTGotoStatement [
	<generated>
	self visit: aPWBASTGotoStatement identifier.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTGraphicComponent: aPWBASTGraphicComponent [
	<generated>
	self visit: aPWBASTGraphicComponent graphicComponentToken.
	self visit: aPWBASTGraphicComponent parameters.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTGraphicComponentToken: anPWBASTGraphicComponentToken [
	<generated>
	^ anPWBASTGraphicComponentToken graphicComponentToken
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTIdentifier: anPWBASTIdentifier [
	<generated>
	^ anPWBASTIdentifier identifier
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTIfMultiLine: aPWBASTIfMultiLine [
	<generated>
	self visit: aPWBASTIfMultiLine condition.
	self visit: aPWBASTIfMultiLine statements.
	self visitAll: aPWBASTIfMultiLine elseIfs.
	self visit: aPWBASTIfMultiLine else.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTIfSingleLine: aPWBASTIfSingleLine [
	<generated>
	self visit: aPWBASTIfSingleLine condition.
	self visit: aPWBASTIfSingleLine statement.
	self visit: aPWBASTIfSingleLine elseOnLine.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTIfStatement: aPWBASTIfStatement [
	<generated>
	self visit: aPWBASTIfStatement ifStatement.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTImport: aPWBASTImport [
	<generated>
	self visit: aPWBASTImport formatType.
	self visit: aPWBASTImport parameters.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTIntervalExpression: aPWBASTIntervalExpression [
	<generated>
	self visit: aPWBASTIntervalExpression from.
	self visit: aPWBASTIntervalExpression to.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTMethodInvocation: aPWBASTMethodInvocation [
	<generated>
	self visit: aPWBASTMethodInvocation methodInvocation.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTMrlInvocationLine: aPWBASTMrlInvocationLine [
	<generated>
	self visitAll: aPWBASTMrlInvocationLine mrlInvocationLines.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTMrlMethodInvocation: aPWBASTMrlMethodInvocation [
	<generated>
	self visit: aPWBASTMrlMethodInvocation expressionTerm.
	self visit: aPWBASTMrlMethodInvocation expressionAction.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTMrlSignatures: aPWBASTMrlSignatures [
	<generated>
	self visit: aPWBASTMrlSignatures mrlSignatures.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTMultiLineCase: aPWBASTMultiLineCase [
	<generated>
	self visit: aPWBASTMultiLineCase expressionList.
	self visit: aPWBASTMultiLineCase statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTNotExpression: aPWBASTNotExpression [
	<generated>
	self visit: aPWBASTNotExpression expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTNumber: anPWBASTNumber [
	<generated>
	^ anPWBASTNumber number
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTOpenSqlCursor: aPWBASTOpenSqlCursor [
	<generated>
	self visit: aPWBASTOpenSqlCursor identifier.
	self visit: aPWBASTOpenSqlCursor descriptor.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTOperatorExpression: aPWBASTOperatorExpression [
	<generated>
	self visit: aPWBASTOperatorExpression left.
	self visit: aPWBASTOperatorExpression expressionAction.
	self visit: aPWBASTOperatorExpression right.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTOppositeFullInvocation: anPWBASTOppositeFullInvocation [
	<generated>
	^ anPWBASTOppositeFullInvocation oppositeFullInvocation
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTOption: aPWBASTOption [
	<generated>
	self visit: aPWBASTOption option.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTOptionValue: aPWBASTOptionValue [
	<generated>
	self visit: aPWBASTOptionValue expression.
	self visit: aPWBASTOptionValue graphicIndex.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTOptions: aPWBASTOptions [
	<generated>
	self visitAll: aPWBASTOptions options.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTParameters: aPWBASTParameters [
	<generated>
	self visit: aPWBASTParameters options.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTParametrizedType: anPWBASTParametrizedType [
	<generated>
	^ anPWBASTParametrizedType parametrizedType
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTParenthesedArray: aPWBASTParenthesedArray [
	<generated>
	self visit: aPWBASTParenthesedArray expression.
	self visitAll: aPWBASTParenthesedArray expressions.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTParenthesedExpression: aPWBASTParenthesedExpression [
	<generated>
	self visit: aPWBASTParenthesedExpression expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTPostEvent: anPWBASTPostEvent [
	<generated>
	^ anPWBASTPostEvent postEvent
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTPostFixOperator: aPWBASTPostFixOperator [
	<generated>
	self visit: aPWBASTPostFixOperator expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTPrepareSQL: aPWBASTPrepareSQL [
	<generated>
	self visit: aPWBASTPrepareSQL identifier.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTProgramStep: aPWBASTProgramStep [
	<generated>
	self visit: aPWBASTProgramStep identifier.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTPrototypesDeclaration: aPWBASTPrototypesDeclaration [
	<generated>
	self visitAll: aPWBASTPrototypesDeclaration declarations.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTRegularMethodInvocation: aPWBASTRegularMethodInvocation [
	<generated>
	self visit: aPWBASTRegularMethodInvocation uncheckedIdentifier.
	self visit: aPWBASTRegularMethodInvocation functionArguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTReturnStatement: aPWBASTReturnStatement [
	<generated>
	self visit: aPWBASTReturnStatement expression.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTSharedVariables: aPWBASTSharedVariables [
	<generated>
	self visit: aPWBASTSharedVariables attributes.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTSingleLineCase: aPWBASTSingleLineCase [
	<generated>
	self visit: aPWBASTSingleLineCase expressionList.
	self visit: aPWBASTSingleLineCase statement.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTSpecialStatement: aPWBASTSpecialStatement [
	<generated>
	self visit: aPWBASTSpecialStatement specialStatement.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTSpecialVariable: aPWBASTSpecialVariable [
	<generated>
	self visit: aPWBASTSpecialVariable this.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTSqlCommitStatement: aPWBASTSqlCommitStatement [
	<generated>
	self visit: aPWBASTSqlCommitStatement usingClause.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTSqlQuery: anPWBASTSqlQuery [
	<generated>
	^ anPWBASTSqlQuery sqlQuery
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTSqlRollbackStatement: aPWBASTSqlRollbackStatement [
	<generated>
	self visit: aPWBASTSqlRollbackStatement usingClause.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTSqlVariable: aPWBASTSqlVariable [
	<generated>
	self visit: aPWBASTSqlVariable identifier.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTStatement: aPWBASTStatement [
	<generated>
	self visit: aPWBASTStatement statement.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTStatements: aPWBASTStatements [
	<generated>
	self visitAll: aPWBASTStatements statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTString: anPWBASTString [
	<generated>
	^ anPWBASTString string
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTSubroutineDeclaration: aPWBASTSubroutineDeclaration [
	<generated>
	self visit: aPWBASTSubroutineDeclaration subroutineSignature.
	self visitAll: aPWBASTSubroutineDeclaration behaviouralOptions.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTSubroutineDefinition: aPWBASTSubroutineDefinition [
	<generated>
	self visit: aPWBASTSubroutineDefinition subroutineSignature.
	self visit: aPWBASTSubroutineDefinition statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTSubroutineSignature: aPWBASTSubroutineSignature [
	<generated>
	self visit: aPWBASTSubroutineSignature accessModifier.
	self visit: aPWBASTSubroutineSignature identifier.
	self visit: aPWBASTSubroutineSignature arguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTTable: aPWBASTTable [
	<generated>
	self visitAll: aPWBASTTable columns.
	self visit: aPWBASTTable options.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTTemplate: aPWBASTTemplate [
	<generated>
	self visitAll: aPWBASTTemplate options.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTThis: anPWBASTThis [
	<generated>
	^ anPWBASTThis this
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTTime: anPWBASTTime [
	<generated>
	^ anPWBASTTime time
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTTransactionObject: aPWBASTTransactionObject [
	<generated>
	self visit: aPWBASTTransactionObject identifier.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTTriggerDefinition: aPWBASTTriggerDefinition [
	<generated>
	self visit: aPWBASTTriggerDefinition identifier.
	self visit: aPWBASTTriggerDefinition eventType.
	self visit: aPWBASTTriggerDefinition statements.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTTryCatch: aPWBASTTryCatch [
	<generated>
	self visit: aPWBASTTryCatch statements.
	self visitAll: aPWBASTTryCatch catchBlocks.
	self visit: aPWBASTTryCatch finallyBlock.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTType: aPWBASTType [
	<generated>
	self visit: aPWBASTType type.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTTypeDeclaration: aPWBASTTypeDeclaration [
	<generated>
	self visit: aPWBASTTypeDeclaration type.
	self visit: aPWBASTTypeDeclaration fromClause.
	self visit: aPWBASTTypeDeclaration eventType.
	self visit: aPWBASTTypeDeclaration withinClause.
	self visit: aPWBASTTypeDeclaration descriptor.
	self visit: aPWBASTTypeDeclaration attributes.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTTypePrototypes: aPWBASTTypePrototypes [
	<generated>
	self visitAll: aPWBASTTypePrototypes declarations.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTTypeVariable: aPWBASTTypeVariable [
	<generated>
	self visit: aPWBASTTypeVariable attributes.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTUncheckedIdentifier: anPWBASTUncheckedIdentifier [
	<generated>
	^ anPWBASTUncheckedIdentifier uncheckedIdentifier
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTUserObjectFile: aPWBASTUserObjectFile [
	<generated>
	self visit: aPWBASTUserObjectFile commonFile.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTUsingClause: aPWBASTUsingClause [
	<generated>
	self visit: aPWBASTUsingClause transactionObject.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTVariable: aPWBASTVariable [
	<generated>
	self visit: aPWBASTVariable identifier.
	self visit: aPWBASTVariable arrayDefinition.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTVariableAssignation: aPWBASTVariableAssignation [
	<generated>
	self visit: aPWBASTVariableAssignation variable.
	self visit: aPWBASTVariableAssignation assignation.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTVariableDeclarations: aPWBASTVariableDeclarations [
	<generated>
	self visit: aPWBASTVariableDeclarations type.
	self visitAll: aPWBASTVariableDeclarations variableAssignations.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTWindowFile: aPWBASTWindowFile [
	<generated>
	self visit: aPWBASTWindowFile commonFile.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTWithinClause: aPWBASTWithinClause [
	<generated>
	self visit: aPWBASTWithinClause customType.
]
