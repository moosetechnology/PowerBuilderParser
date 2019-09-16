Class {
	#name : #PWBASTAbstractVisitor,
	#superclass : #Object,
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
PWBASTAbstractVisitor >> visitPWBASTAccess: aPWBASTAccess [
	<generated>
	self visit: aPWBASTAccess variable.
	self visit: aPWBASTAccess arrayPosition.
	self visitAll: aPWBASTAccess attributeAccesses.
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
	self visit: aPWBASTAssignationStatement access.
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
PWBASTAbstractVisitor >> visitPWBASTEventReferenceName: aPWBASTEventReferenceName [
	<generated>
	self visit: aPWBASTEventReferenceName objectClass.
	self visit: aPWBASTEventReferenceName eventName.
	self visit: aPWBASTEventReferenceName arguments.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTEventType: aPWBASTEventType [
	<generated>
	self visit: aPWBASTEventType eventType.
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
	self visitAll: aPWBASTExpression methodInvocations.
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
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTOperatorExpression: aPWBASTOperatorExpression [
	<generated>
	self visit: aPWBASTOperatorExpression left.
	self visitAll: aPWBASTOperatorExpression methodInvocations.
	self visit: aPWBASTOperatorExpression right.
]

{ #category : #visiting }
PWBASTAbstractVisitor >> visitPWBASTOption: aPWBASTOption [
	<generated>
	self visit: aPWBASTOption access.
	self visit: aPWBASTOption optionValue.
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
PWBASTAbstractVisitor >> visitPWBASTPostFixOperator: aPWBASTPostFixOperator [
	<generated>
	self visit: aPWBASTPostFixOperator access.
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
	self visit: aPWBASTVariable this.
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
