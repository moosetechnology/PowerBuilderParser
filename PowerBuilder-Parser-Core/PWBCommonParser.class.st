Class {
	#name : #PWBCommonParser,
	#superclass : #PWBCommonGrammar,
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #rules }
PWBCommonParser >> access [
	<generated>
	^ super access ==> [ :production | PWBASTAccess new variable: (production at: 1); arrayPosition: (production ifNotNil: [(production at: 2)]); attributeAccesses: (production at: 3); yourself ]
]

{ #category : #rules }
PWBCommonParser >> accessModifier [
	<generated>
	^ super accessModifier flatten ==> [ :production | PWBASTAccessModifier new accessModifier: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> accessModifierDefiner [
	<generated>
	^ super accessModifierDefiner ==> [ :production | PWBASTAccessModifierDefiner new accessModifier: (production at: 1); yourself ]
]

{ #category : #rules }
PWBCommonParser >> accessOrType [
	<generated>
	^ super accessOrType ==> [ :production | PWBASTAccessOrType new accessOrType: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> argument [
	<generated>
	^ super argument ==> [ :production | PWBASTArgument new argumentOption: ((production at: 1) ifNotNil: [((production at: 1) at: 1)]); type: (production at: 2); identifier: (production at: 4); arrayWithSize: (production ifNotNil: [(production at: 5)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> argumentOption [
	<generated>
	^ super argumentOption flatten ==> [ :production | PWBASTArgumentOption new argumentOption: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> arguments [
	<generated>
	^ super arguments ==> [ :production | PWBASTArguments new arguments: ((production at: 3) ifNotNil: [(self rejectSeparators: (production at: 3))]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> array [
	<generated>
	^ super array ==> [ :production | PWBASTArray new expressions: (self rejectSeparators: (production at: 2)); yourself ]
]

{ #category : #rules }
PWBCommonParser >> arrayDesignation [
	<generated>
	^ super arrayDesignation flatten ==> [ :production | PWBASTArrayDesignation new arrayDesignation: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> arrayPosition [
	<generated>
	^ super arrayPosition ==> [ :production | PWBASTArrayPosition new expression: (production at: 2); yourself ]
]

{ #category : #rules }
PWBCommonParser >> arrayWithSize [
	<generated>
	^ super arrayWithSize ==> [ :production | PWBASTArrayWithSize new expressions: ((production at: 4) ifNotNil: [(self rejectSeparators: (production at: 4))]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> assignation [
	<generated>
	^ super assignation ==> [ :production | PWBASTAssignation new expression: (production at: 4); yourself ]
]

{ #category : #rules }
PWBCommonParser >> assignationStatement [
	<generated>
	^ super assignationStatement ==> [ :production | PWBASTAssignationStatement new access: (production at: 1); assignation: (production at: 2); yourself ]
]

{ #category : #rules }
PWBCommonParser >> attribute [
	<generated>
	^ super attribute ==> [ :production | PWBASTAttribute new accessModifier: ((production at: 1) ifNotNil: [((production at: 1) at: 1)]); variableDeclarations: (production at: 3); descriptor: ((production at: 4) ifNotNil: [((production at: 4) at: 2)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> attributeAccess [
	<generated>
	^ super attributeAccess ==> [ :production | PWBASTAttributeAccess new uncheckedIdentifier: (production at: 2); arrayInformation: (production ifNotNil: [(production at: 4)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> attributes [
	<generated>
	^ super attributes ==> [ :production | PWBASTAttributes new attributeses: (self rejectSeparators: (production at: 1)); yourself ]
]

{ #category : #rules }
PWBCommonParser >> basicType [
	<generated>
	^ super basicType flatten ==> [ :production | PWBASTBasicType new basicType: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> behaviouralAlias [
	<generated>
	^ super behaviouralAlias ==> [ :production | PWBASTBehaviouralAlias new alias: (production at: 3); yourself ]
]

{ #category : #rules }
PWBCommonParser >> behaviouralLibrary [
	<generated>
	^ super behaviouralLibrary ==> [ :production | PWBASTBehaviouralLibrary new libraryFile: (production at: 3); yourself ]
]

{ #category : #rules }
PWBCommonParser >> behaviouralOption [
	<generated>
	^ super behaviouralOption ==> [ :production | PWBASTBehaviouralOption new behaviouralOption: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> booleanValue [
	<generated>
	^ super booleanValue flatten ==> [ :production | PWBASTBooleanValue new booleanValue: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> callStatement [
	<generated>
	^ super callStatement ==> [ :production | PWBASTCallStatement new variable: (production at: 3); identifier: ((production at: 4) ifNotNil: [((production at: 4) at: 2)]); eventType: (production at: 6); yourself ]
]

{ #category : #rules }
PWBCommonParser >> case [
	<generated>
	^ super case ==> [ :production | PWBASTCase new case: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> caseElse [
	<generated>
	^ super caseElse ==> [ :production | PWBASTCaseElse new statements: (production ifNotNil: [(production at: 5)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> catchBlock [
	<generated>
	^ super catchBlock ==> [ :production | PWBASTCatchBlock new arguments: (production at: 3); statements: ((production at: 4) ifNotNil: [((production at: 4) at: 2)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> chooseCase [
	<generated>
	^ super chooseCase ==> [ :production | PWBASTChooseCase new expression: (production at: 5); cases: (self rejectSeparators: (production at: 7)); caseElse: ((production at: 9) ifNotNil: [((production at: 9) at: 1)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> closeSqlCursor [
	<generated>
	^ super closeSqlCursor ==> [ :production | PWBASTCloseSqlCursor new identifier: (production at: 3); yourself ]
]

{ #category : #rules }
PWBCommonParser >> commonFile [
	<generated>
	^ super commonFile ==> [ :production | PWBASTCommonFile new fileStatements: (self rejectSeparators: production); yourself ]
]

{ #category : #rules }
PWBCommonParser >> condition [
	<generated>
	^ super condition ==> [ :production | PWBASTCondition new expression: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> constant [
	<generated>
	^ super constant flatten ==> [ :production | PWBASTConstant new constant: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> continueStatement [
	<generated>
	^ super continueStatement flatten ==> [ :production | PWBASTContinueStatement new continueStatement: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> createInstruction [
	<generated>
	^ super createInstruction ==> [ :production | PWBASTCreateInstruction new variable: (production at: 3); yourself ]
]

{ #category : #rules }
PWBCommonParser >> customCallStatement [
	<generated>
	^ super customCallStatement ==> [ :production | PWBASTCustomCallStatement new identifier: (production at: 5); yourself ]
]

{ #category : #rules }
PWBCommonParser >> customType [
	<generated>
	^ super customType ==> [ :production | PWBASTCustomType new identifier: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> declareCursor [
	<generated>
	^ super declareCursor ==> [ :production | PWBASTDeclareCursor new identifier: (production at: 3); sqlQuery: (production at: 9); yourself ]
]

{ #category : #rules }
PWBCommonParser >> defaultEventType [
	<generated>
	^ super defaultEventType flatten ==> [ :production | PWBASTDefaultEventType new defaultEventType: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> defaultVariable [
	<generated>
	^ super defaultVariable flatten ==> [ :production | PWBASTDefaultVariable new defaultVariable: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> descriptor [
	<generated>
	^ super descriptor ==> [ :production | PWBASTDescriptor new expression: (production at: 3); yourself ]
]

{ #category : #rules }
PWBCommonParser >> doLoopUntil [
	<generated>
	^ super doLoopUntil ==> [ :production | PWBASTDoLoopUntil new statements: (production at: 3); expression: (production at: 9); yourself ]
]

{ #category : #rules }
PWBCommonParser >> doLoopWhile [
	<generated>
	^ super doLoopWhile ==> [ :production | PWBASTDoLoopWhile new statements: (production at: 3); expression: (production at: 9); yourself ]
]

{ #category : #rules }
PWBCommonParser >> doUntilLoop [
	<generated>
	^ super doUntilLoop ==> [ :production | PWBASTDoUntilLoop new expression: (production at: 5); statements: (production at: 7); yourself ]
]

{ #category : #rules }
PWBCommonParser >> doWhileLoop [
	<generated>
	^ super doWhileLoop ==> [ :production | PWBASTDoWhileLoop new expression: (production at: 5); statements: (production at: 7); yourself ]
]

{ #category : #rules }
PWBCommonParser >> else [
	<generated>
	^ super else ==> [ :production | PWBASTElse new statements: (production ifNotNil: [(production at: 3)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> elseIf [
	<generated>
	^ super elseIf ==> [ :production | PWBASTElseIf new expression: (production at: 3); statements: (production ifNotNil: [(production at: 7)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> elseOnLine [
	<generated>
	^ super elseOnLine ==> [ :production | PWBASTElseOnLine new statement: (production at: 4); yourself ]
]

{ #category : #rules }
PWBCommonParser >> endForward [
	<generated>
	^ super endForward flatten ==> [ :production | PWBASTEndForward new endForward: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> eventAttribute [
	<generated>
	^ super eventAttribute ==> [ :production | PWBASTEventAttribute new returnType: ((production at: 3) ifNotNil: [((production at: 3) at: 3)]); eventName: (production at: 4); attribute: (production at: 6); yourself ]
]

{ #category : #rules }
PWBCommonParser >> eventDeclaration [
	<generated>
	^ super eventDeclaration ==> [ :production | PWBASTEventDeclaration new eventReferenceName: (production at: 3); customCallStatement: ((production at: 5) ifNotNil: [((production at: 5) at: 1)]); statements: (production ifNotNil: [(production at: 7)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> eventReferenceName [
	<generated>
	^ super eventReferenceName ==> [ :production | PWBASTEventReferenceName new objectClass: ((production at: 1) ifNotNil: [((production at: 1) at: 1)]); eventName: (production at: 2); arguments: (production ifNotNil: [(production at: 3)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> eventType [
	<generated>
	^ super eventType ==> [ :production | PWBASTEventType new eventType: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> exitStatement [
	<generated>
	^ super exitStatement flatten ==> [ :production | PWBASTExitStatement new exitStatement: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> expression [
	<generated>
	^ super expression ==> [ :production | PWBASTExpression new expression: (production at: 1); methodInvocations: (production at: 2); yourself ]
]

{ #category : #rules }
PWBCommonParser >> expressionList [
	<generated>
	^ super expressionList ==> [ :production | PWBASTExpressionList new expressions: (self rejectSeparators: production); yourself ]
]

{ #category : #rules }
PWBCommonParser >> expressionTerm [
	<generated>
	^ super expressionTerm ==> [ :production | PWBASTExpressionTerm new expressionTerm: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> expressionWithSign [
	<generated>
	^ super expressionWithSign ==> [ :production | PWBASTExpressionWithSign new expression: (production at: 3); yourself ]
]

{ #category : #rules }
PWBCommonParser >> file [
	<generated>
	^ super file ==> [ :production | PWBASTFile new content: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> finallyBlock [
	<generated>
	^ super finallyBlock ==> [ :production | PWBASTFinallyBlock new statements: ((production at: 2) ifNotNil: [((production at: 2) at: 2)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> forLoop [
	<generated>
	^ super forLoop ==> [ :production | PWBASTForLoop new assignationStatement: (production at: 3); endExpression: (production at: 7); stepExpression: ((production at: 8) ifNotNil: [((production at: 8) at: 4)]); statements: (production at: 10); yourself ]
]

{ #category : #rules }
PWBCommonParser >> forwardDeclaration [
	<generated>
	^ super forwardDeclaration ==> [ :production | PWBASTForwardDeclaration new typeDeclarations: (self rejectSeparators: (production at: 3)); endForward: (production at: 5); yourself ]
]

{ #category : #rules }
PWBCommonParser >> fromClause [
	<generated>
	^ super fromClause ==> [ :production | PWBASTFromClause new customType: (production at: 3); yourself ]
]

{ #category : #rules }
PWBCommonParser >> functionArgument [
	<generated>
	^ super functionArgument ==> [ :production | PWBASTFunctionArgument new argumentOption: ((production at: 1) ifNotNil: [((production at: 1) at: 1)]); expression: (production at: 2); yourself ]
]

{ #category : #rules }
PWBCommonParser >> functionArguments [
	<generated>
	^ super functionArguments ==> [ :production | PWBASTFunctionArguments new functionArguments: ((production at: 2) ifNotNil: [(self rejectSeparators: (production at: 2))]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> functionDeclaration [
	<generated>
	^ super functionDeclaration ==> [ :production | PWBASTFunctionDeclaration new functionSignature: (production at: 1); behaviouralOptions: ((production at: 2) collect: [:subProduction | subProduction at: 2]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> functionDefinition [
	<generated>
	^ super functionDefinition ==> [ :production | PWBASTFunctionDefinition new functionSignature: (production at: 1); statements: (production at: 4); yourself ]
]

{ #category : #rules }
PWBCommonParser >> functionInvocation [
	<generated>
	^ super functionInvocation ==> [ :production | PWBASTFunctionInvocation new defaultVariable: ((production at: 1) ifNotNil: [((production at: 1) at: 1)]); functionName: (production at: 2); functionArguments: (production at: 4); yourself ]
]

{ #category : #rules }
PWBCommonParser >> functionSignature [
	<generated>
	^ super functionSignature ==> [ :production | PWBASTFunctionSignature new accessModifier: ((production at: 1) ifNotNil: [((production at: 1) at: 1)]); type: (production at: 4); identifier: (production at: 6); arguments: (production at: 8); yourself ]
]

{ #category : #rules }
PWBCommonParser >> globalVariableDeclaration [
	<generated>
	^ super globalVariableDeclaration ==> [ :production | PWBASTGlobalVariableDeclaration new type: (production at: 3); variable: (production at: 5); yourself ]
]

{ #category : #rules }
PWBCommonParser >> gotoStatement [
	<generated>
	^ super gotoStatement ==> [ :production | PWBASTGotoStatement new identifier: (production at: 3); yourself ]
]

{ #category : #rules }
PWBCommonParser >> identifier [
	<generated>
	^ super identifier flatten ==> [ :production | PWBASTIdentifier new identifier: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> ifMultiLine [
	<generated>
	^ super ifMultiLine ==> [ :production | PWBASTIfMultiLine new condition: (production at: 3); statements: (production ifNotNil: [(production at: 7)]); elseIfs: ((production at: 8) collect: [:subProduction | subProduction at: 2]); else: ((production at: 9) ifNotNil: [((production at: 9) at: 2)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> ifSingleLine [
	<generated>
	^ super ifSingleLine ==> [ :production | PWBASTIfSingleLine new condition: (production at: 3); statement: (production at: 7); elseOnLine: (production ifNotNil: [(production at: 8)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> ifStatement [
	<generated>
	^ super ifStatement ==> [ :production | PWBASTIfStatement new ifStatement: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> methodInvocation [
	<generated>
	^ super methodInvocation ==> [ :production | PWBASTMethodInvocation new uncheckedIdentifier: (production at: 4); functionArguments: (production at: 6); yourself ]
]

{ #category : #rules }
PWBCommonParser >> multiLineCase [
	<generated>
	^ super multiLineCase ==> [ :production | PWBASTMultiLineCase new expressionList: (production at: 3); statements: (production ifNotNil: [(production at: 5)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> notExpression [
	<generated>
	^ super notExpression ==> [ :production | PWBASTNotExpression new expression: (production at: 3); yourself ]
]

{ #category : #rules }
PWBCommonParser >> number [
	<generated>
	^ super number flatten ==> [ :production | PWBASTNumber new number: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> openSqlCursor [
	<generated>
	^ super openSqlCursor ==> [ :production | PWBASTOpenSqlCursor new identifier: (production at: 3); yourself ]
]

{ #category : #rules }
PWBCommonParser >> operatorExpression [
	<generated>
	^ super operatorExpression ==> [ :production | PWBASTOperatorExpression new left: (production at: 1); methodInvocations: (production at: 2); right: (production at: 6); yourself ]
]

{ #category : #rules }
PWBCommonParser >> parametrizedType [
	<generated>
	^ super parametrizedType flatten ==> [ :production | PWBASTParametrizedType new parametrizedType: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> parenthesedArray [
	<generated>
	^ super parenthesedArray ==> [ :production | PWBASTParenthesedArray new expression: (production at: 2); expressions: ((production at: 3) collect: [:subProduction | subProduction at: 2]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> parenthesedExpression [
	<generated>
	^ super parenthesedExpression ==> [ :production | PWBASTParenthesedExpression new expression: (production at: 3); yourself ]
]

{ #category : #rules }
PWBCommonParser >> postFixOperator [
	<generated>
	^ super postFixOperator ==> [ :production | PWBASTPostFixOperator new access: (production at: 1); yourself ]
]

{ #category : #rules }
PWBCommonParser >> programStep [
	<generated>
	^ super programStep ==> [ :production | PWBASTProgramStep new identifier: (production at: 1); yourself ]
]

{ #category : #rules }
PWBCommonParser >> prototypesDeclaration [
	<generated>
	^ super prototypesDeclaration ==> [ :production | PWBASTPrototypesDeclaration new declarations: ((production at: 3) ifNotNil: [(self rejectSeparators: (production at: 3))]); yourself ]
]

{ #category : #helpers }
PWBCommonParser >> rejectSeparators: anArray [
	<generated>
	^ anArray withIndexSelect: [:anElement :anIndex | anIndex odd]
]

{ #category : #rules }
PWBCommonParser >> returnStatement [
	<generated>
	^ super returnStatement ==> [ :production | PWBASTReturnStatement new expression: ((production at: 2) ifNotNil: [((production at: 2) at: 2)]); yourself ]
]

{ #category : #helpers }
PWBCommonParser >> selectSeparators: anArray [
	<generated>
	^ anArray withIndexSelect: [:anElement :anIndex | anIndex even]
]

{ #category : #rules }
PWBCommonParser >> sharedVariables [
	<generated>
	^ super sharedVariables ==> [ :production | PWBASTSharedVariables new attributes: (production ifNotNil: [(production at: 3)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> singleLineCase [
	<generated>
	^ super singleLineCase ==> [ :production | PWBASTSingleLineCase new expressionList: (production at: 3); statement: (production at: 5); yourself ]
]

{ #category : #rules }
PWBCommonParser >> specialStatement [
	<generated>
	^ super specialStatement ==> [ :production | PWBASTSpecialStatement new specialStatement: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> sqlCommitStatement [
	<generated>
	^ super sqlCommitStatement ==> [ :production | PWBASTSqlCommitStatement new usingClause: ((production at: 3) ifNotNil: [((production at: 3) at: 1)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> sqlQuery [
	<generated>
	^ super sqlQuery flatten ==> [ :production | PWBASTSqlQuery new sqlQuery: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> sqlRollbackStatement [
	<generated>
	^ super sqlRollbackStatement ==> [ :production | PWBASTSqlRollbackStatement new usingClause: ((production at: 3) ifNotNil: [((production at: 3) at: 1)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> statement [
	<generated>
	^ super statement ==> [ :production | PWBASTStatement new statement: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> statements [
	<generated>
	^ super statements ==> [ :production | PWBASTStatements new statements: (self rejectSeparators: production); yourself ]
]

{ #category : #rules }
PWBCommonParser >> string [
	<generated>
	^ super string flatten ==> [ :production | PWBASTString new string: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> subroutineDeclaration [
	<generated>
	^ super subroutineDeclaration ==> [ :production | PWBASTSubroutineDeclaration new subroutineSignature: (production at: 1); behaviouralOptions: ((production at: 2) collect: [:subProduction | subProduction at: 2]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> subroutineDefinition [
	<generated>
	^ super subroutineDefinition ==> [ :production | PWBASTSubroutineDefinition new subroutineSignature: (production at: 1); statements: (production at: 4); yourself ]
]

{ #category : #rules }
PWBCommonParser >> subroutineSignature [
	<generated>
	^ super subroutineSignature ==> [ :production | PWBASTSubroutineSignature new accessModifier: ((production at: 1) ifNotNil: [((production at: 1) at: 1)]); identifier: (production at: 4); arguments: (production at: 6); yourself ]
]

{ #category : #rules }
PWBCommonParser >> this [
	<generated>
	^ super this flatten ==> [ :production | PWBASTThis new this: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> transactionObject [
	<generated>
	^ super transactionObject ==> [ :production | PWBASTTransactionObject new identifier: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> triggerDefinition [
	<generated>
	^ super triggerDefinition ==> [ :production | PWBASTTriggerDefinition new identifier: ((production at: 3) ifNotNil: [((production at: 3) at: 1)]); eventType: (production at: 4); statements: (production at: 7); yourself ]
]

{ #category : #rules }
PWBCommonParser >> tryCatch [
	<generated>
	^ super tryCatch ==> [ :production | PWBASTTryCatch new statements: ((production at: 2) ifNotNil: [((production at: 2) at: 2)]); catchBlocks: ((production at: 3) collect: [:subProduction | subProduction at: 2]); finallyBlock: ((production at: 4) ifNotNil: [((production at: 4) at: 2)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> type [
	<generated>
	^ super type ==> [ :production | PWBASTType new type: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> typeDeclaration [
	<generated>
	^ super typeDeclaration ==> [ :production | PWBASTTypeDeclaration new type: (production at: 4); fromClause: ((production at: 6) at: 2); eventType: ((production at: 7) ifNotNil: [((production at: 7) at: 2)]); withinClause: ((production at: 9) ifNotNil: [((production at: 9) at: 2)]); descriptor: ((production at: 10) ifNotNil: [((production at: 10) at: 2)]); attributes: ((production at: 11) ifNotNil: [((production at: 11) at: 2)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> typePrototypes [
	<generated>
	^ super typePrototypes ==> [ :production | PWBASTTypePrototypes new declarations: (self rejectSeparators: (production at: 3)); yourself ]
]

{ #category : #rules }
PWBCommonParser >> typeVariable [
	<generated>
	^ super typeVariable ==> [ :production | PWBASTTypeVariable new attributes: (production ifNotNil: [(production at: 3)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> uncheckedIdentifier [
	<generated>
	^ super uncheckedIdentifier flatten ==> [ :production | PWBASTUncheckedIdentifier new uncheckedIdentifier: production; yourself ]
]

{ #category : #rules }
PWBCommonParser >> usingClause [
	<generated>
	^ super usingClause ==> [ :production | PWBASTUsingClause new transactionObject: (production at: 3); yourself ]
]

{ #category : #rules }
PWBCommonParser >> variable [
	<generated>
	^ super variable ==> [ :production | PWBASTVariable new this: (production ifNotNil: [(production at: 1)]); identifier: (production at: 2); arrayWithSize: (production ifNotNil: [(production at: 4)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> variableAssignation [
	<generated>
	^ super variableAssignation ==> [ :production | PWBASTVariableAssignation new variable: (production at: 1); assignation: (production ifNotNil: [(production at: 2)]); yourself ]
]

{ #category : #rules }
PWBCommonParser >> variableDeclarations [
	<generated>
	^ super variableDeclarations ==> [ :production | PWBASTVariableDeclarations new type: (production at: 1); variableAssignations: (self rejectSeparators: (production at: 3)); yourself ]
]

{ #category : #rules }
PWBCommonParser >> withinClause [
	<generated>
	^ super withinClause ==> [ :production | PWBASTWithinClause new customType: (production at: 3); yourself ]
]
