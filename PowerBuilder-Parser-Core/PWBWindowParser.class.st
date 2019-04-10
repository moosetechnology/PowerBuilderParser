Class {
	#name : #PWBWindowParser,
	#superclass : #PWBWindowGrammar,
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #rules }
PWBWindowParser >> access [
	<generated>
	^ super access ==> [ :production | PWBASTAccess new variable: (production at: 1); arrayPosition: (production ifNotNil: [(production at: 2)]); attributeAccesses: (production at: 3); yourself ]
]

{ #category : #rules }
PWBWindowParser >> accessModifier [
	<generated>
	^ super accessModifier flatten ==> [ :production | PWBASTAccessModifier new accessModifier: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> accessOrType [
	<generated>
	^ super accessOrType ==> [ :production | PWBASTAccessOrType new accessOrType: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> argument [
	<generated>
	^ super argument ==> [ :production | PWBASTArgument new type: (production at: 2); identifier: (production at: 4); arrayWithSize: (production ifNotNil: [(production at: 5)]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> arguments [
	<generated>
	^ super arguments ==> [ :production | PWBASTArguments new arguments: ((production at: 3) ifNotNil: [(self rejectSeparators: (production at: 3))]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> array [
	<generated>
	^ super array ==> [ :production | PWBASTArray new expressions: (self rejectSeparators: (production at: 2)); yourself ]
]

{ #category : #rules }
PWBWindowParser >> arrayPosition [
	<generated>
	^ super arrayPosition ==> [ :production | PWBASTArrayPosition new expression: (production at: 2); yourself ]
]

{ #category : #rules }
PWBWindowParser >> arrayWithSize [
	<generated>
	^ super arrayWithSize ==> [ :production | PWBASTArrayWithSize new expressions: ((production at: 3) ifNotNil: [(self rejectSeparators: (production at: 3))]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> assignation [
	<generated>
	^ super assignation ==> [ :production | PWBASTAssignation new expression: (production at: 4); yourself ]
]

{ #category : #rules }
PWBWindowParser >> assignationStatement [
	<generated>
	^ super assignationStatement ==> [ :production | PWBASTAssignationStatement new access: (production at: 1); assignation: (production at: 2); yourself ]
]

{ #category : #rules }
PWBWindowParser >> attribute [
	<generated>
	^ super attribute ==> [ :production | PWBASTAttribute new variableDeclarations: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> attributeAccess [
	<generated>
	^ super attributeAccess ==> [ :production | PWBASTAttributeAccess new uncheckedIdentifier: (production at: 2); arrayPosition: (production ifNotNil: [(production at: 4)]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> attributes [
	<generated>
	^ super attributes ==> [ :production | PWBASTAttributes new attributeses: (self rejectSeparators: (production at: 1)); yourself ]
]

{ #category : #rules }
PWBWindowParser >> basicType [
	<generated>
	^ super basicType flatten ==> [ :production | PWBASTBasicType new basicType: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> booleanValue [
	<generated>
	^ super booleanValue flatten ==> [ :production | PWBASTBooleanValue new booleanValue: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> callStatement [
	<generated>
	^ super callStatement ==> [ :production | PWBASTCallStatement new variable: (production at: 3); identifier: ((production at: 4) ifNotNil: [((production at: 4) at: 2)]); eventType: (production at: 6); yourself ]
]

{ #category : #rules }
PWBWindowParser >> case [
	<generated>
	^ super case ==> [ :production | PWBASTCase new expressionList: (production at: 3); statements: (production ifNotNil: [(production at: 5)]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> caseElse [
	<generated>
	^ super caseElse ==> [ :production | PWBASTCaseElse new statements: (production ifNotNil: [(production at: 5)]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> catchBlock [
	<generated>
	^ super catchBlock ==> [ :production | PWBASTCatchBlock new arguments: (production at: 3); statements: ((production at: 4) ifNotNil: [((production at: 4) at: 2)]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> chooseCase [
	<generated>
	^ super chooseCase ==> [ :production | PWBASTChooseCase new expression: (production at: 5); cases: (self rejectSeparators: (production at: 7)); caseElse: ((production at: 9) ifNotNil: [((production at: 9) at: 1)]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> closeSqlCursor [
	<generated>
	^ super closeSqlCursor ==> [ :production | PWBASTCloseSqlCursor new identifier: (production at: 3); yourself ]
]

{ #category : #rules }
PWBWindowParser >> commonFile [
	<generated>
	^ super commonFile ==> [ :production | PWBASTCommonFile new fileStatements: (self rejectSeparators: production); yourself ]
]

{ #category : #rules }
PWBWindowParser >> condition [
	<generated>
	^ super condition ==> [ :production | PWBASTCondition new expression: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> constant [
	<generated>
	^ super constant flatten ==> [ :production | PWBASTConstant new constant: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> createInstruction [
	<generated>
	^ super createInstruction ==> [ :production | PWBASTCreateInstruction new variable: (production at: 3); yourself ]
]

{ #category : #rules }
PWBWindowParser >> customCallStatement [
	<generated>
	^ super customCallStatement ==> [ :production | PWBASTCustomCallStatement new identifier: (production at: 5); yourself ]
]

{ #category : #rules }
PWBWindowParser >> customType [
	<generated>
	^ super customType ==> [ :production | PWBASTCustomType new identifier: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> declareCursor [
	<generated>
	^ super declareCursor ==> [ :production | PWBASTDeclareCursor new identifier: (production at: 3); sqlQuery: (production at: 9); yourself ]
]

{ #category : #rules }
PWBWindowParser >> defaultEventType [
	<generated>
	^ super defaultEventType flatten ==> [ :production | PWBASTDefaultEventType new defaultEventType: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> defaultVariable [
	<generated>
	^ super defaultVariable flatten ==> [ :production | PWBASTDefaultVariable new defaultVariable: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> descriptor [
	<generated>
	^ super descriptor ==> [ :production | PWBASTDescriptor new expression: (production at: 3); yourself ]
]

{ #category : #rules }
PWBWindowParser >> doLoopUntil [
	<generated>
	^ super doLoopUntil ==> [ :production | PWBASTDoLoopUntil new statements: (production at: 3); expression: (production at: 9); yourself ]
]

{ #category : #rules }
PWBWindowParser >> doLoopWhile [
	<generated>
	^ super doLoopWhile ==> [ :production | PWBASTDoLoopWhile new statements: (production at: 3); expression: (production at: 9); yourself ]
]

{ #category : #rules }
PWBWindowParser >> doUntilLoop [
	<generated>
	^ super doUntilLoop ==> [ :production | PWBASTDoUntilLoop new expression: (production at: 5); statements: (production at: 7); yourself ]
]

{ #category : #rules }
PWBWindowParser >> doWhileLoop [
	<generated>
	^ super doWhileLoop ==> [ :production | PWBASTDoWhileLoop new expression: (production at: 5); statements: (production at: 7); yourself ]
]

{ #category : #rules }
PWBWindowParser >> else [
	<generated>
	^ super else ==> [ :production | PWBASTElse new statements: (production ifNotNil: [(production at: 3)]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> elseIf [
	<generated>
	^ super elseIf ==> [ :production | PWBASTElseIf new expression: (production at: 3); statements: (production ifNotNil: [(production at: 7)]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> elseOnLine [
	<generated>
	^ super elseOnLine ==> [ :production | PWBASTElseOnLine new statement: (production at: 4); yourself ]
]

{ #category : #rules }
PWBWindowParser >> endForward [
	<generated>
	^ super endForward flatten ==> [ :production | PWBASTEndForward new endForward: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> eventAttribute [
	<generated>
	^ super eventAttribute ==> [ :production | PWBASTEventAttribute new type: (production at: 3); attribute: (production at: 5); yourself ]
]

{ #category : #rules }
PWBWindowParser >> eventDeclaration [
	<generated>
	^ super eventDeclaration ==> [ :production | PWBASTEventDeclaration new eventReferenceName: (production at: 3); customCallStatement: ((production at: 5) ifNotNil: [((production at: 5) at: 1)]); statements: (production ifNotNil: [(production at: 7)]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> eventReferenceName [
	<generated>
	^ super eventReferenceName ==> [ :production | PWBASTEventReferenceName new objectClass: ((production at: 1) ifNotNil: [((production at: 1) at: 1)]); eventName: (production at: 2); arguments: (production ifNotNil: [(production at: 3)]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> eventType [
	<generated>
	^ super eventType ==> [ :production | PWBASTEventType new eventType: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> exitStatement [
	<generated>
	^ super exitStatement flatten ==> [ :production | PWBASTExitStatement new exitStatement: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> expression [
	<generated>
	^ super expression ==> [ :production | PWBASTExpression new expression: (production at: 1); methodInvocations: (production at: 2); yourself ]
]

{ #category : #rules }
PWBWindowParser >> expressionList [
	<generated>
	^ super expressionList ==> [ :production | PWBASTExpressionList new expressions: (self rejectSeparators: production); yourself ]
]

{ #category : #rules }
PWBWindowParser >> expressionTerm [
	<generated>
	^ super expressionTerm ==> [ :production | PWBASTExpressionTerm new expressionTerm: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> expressionWithSign [
	<generated>
	^ super expressionWithSign ==> [ :production | PWBASTExpressionWithSign new expression: (production at: 3); yourself ]
]

{ #category : #rules }
PWBWindowParser >> file [
	<generated>
	^ super file ==> [ :production | PWBASTFile new content: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> forLoop [
	<generated>
	^ super forLoop ==> [ :production | PWBASTForLoop new assignationStatement: (production at: 3); endExpression: (production at: 7); stepExpression: ((production at: 8) ifNotNil: [((production at: 8) at: 4)]); statements: (production at: 10); yourself ]
]

{ #category : #rules }
PWBWindowParser >> fromClause [
	<generated>
	^ super fromClause ==> [ :production | PWBASTFromClause new customType: (production at: 3); yourself ]
]

{ #category : #rules }
PWBWindowParser >> functionArgument [
	<generated>
	^ super functionArgument ==> [ :production | PWBASTFunctionArgument new expression: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> functionArguments [
	<generated>
	^ super functionArguments ==> [ :production | PWBASTFunctionArguments new functionArguments: ((production at: 3) ifNotNil: [(self rejectSeparators: (production at: 3))]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> functionDeclaration [
	<generated>
	^ super functionDeclaration ==> [ :production | PWBASTFunctionDeclaration new functionSignature: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> functionDefinition [
	<generated>
	^ super functionDefinition ==> [ :production | PWBASTFunctionDefinition new functionSignature: (production at: 1); statements: (production at: 4); yourself ]
]

{ #category : #rules }
PWBWindowParser >> functionInvocation [
	<generated>
	^ super functionInvocation ==> [ :production | PWBASTFunctionInvocation new defaultVariable: ((production at: 1) ifNotNil: [((production at: 1) at: 1)]); functionName: (production at: 2); functionArguments: (production at: 4); yourself ]
]

{ #category : #rules }
PWBWindowParser >> functionSignature [
	<generated>
	^ super functionSignature ==> [ :production | PWBASTFunctionSignature new accessModifier: (production at: 1); type: (production at: 5); identifier: (production at: 7); arguments: (production at: 9); yourself ]
]

{ #category : #rules }
PWBWindowParser >> globalVariableDeclaration [
	<generated>
	^ super globalVariableDeclaration ==> [ :production | PWBASTGlobalVariableDeclaration new type: (production at: 3); variable: (production at: 5); yourself ]
]

{ #category : #rules }
PWBWindowParser >> gotoStatement [
	<generated>
	^ super gotoStatement ==> [ :production | PWBASTGotoStatement new identifier: (production at: 3); yourself ]
]

{ #category : #rules }
PWBWindowParser >> identifier [
	<generated>
	^ super identifier flatten ==> [ :production | PWBASTIdentifier new identifier: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> ifMultiLine [
	<generated>
	^ super ifMultiLine ==> [ :production | PWBASTIfMultiLine new condition: (production at: 3); statements: (production ifNotNil: [(production at: 7)]); elseIfs: ((production at: 8) collect: [:subProduction | subProduction at: 2]); else: ((production at: 9) ifNotNil: [((production at: 9) at: 2)]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> ifSingleLine [
	<generated>
	^ super ifSingleLine ==> [ :production | PWBASTIfSingleLine new condition: (production at: 3); statement: (production at: 7); elseOnLine: (production ifNotNil: [(production at: 8)]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> ifStatement [
	<generated>
	^ super ifStatement ==> [ :production | PWBASTIfStatement new ifStatement: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> methodInvocation [
	<generated>
	^ super methodInvocation ==> [ :production | PWBASTMethodInvocation new uncheckedIdentifier: (production at: 4); functionArguments: (production at: 6); yourself ]
]

{ #category : #rules }
PWBWindowParser >> notExpression [
	<generated>
	^ super notExpression ==> [ :production | PWBASTNotExpression new expression: (production at: 3); yourself ]
]

{ #category : #rules }
PWBWindowParser >> number [
	<generated>
	^ super number flatten ==> [ :production | PWBASTNumber new number: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> openSqlCursor [
	<generated>
	^ super openSqlCursor ==> [ :production | PWBASTOpenSqlCursor new identifier: (production at: 3); yourself ]
]

{ #category : #rules }
PWBWindowParser >> operatorExpression [
	<generated>
	^ super operatorExpression ==> [ :production | PWBASTOperatorExpression new left: (production at: 1); methodInvocation: (production ifNotNil: [(production at: 2)]); right: (production at: 6); yourself ]
]

{ #category : #rules }
PWBWindowParser >> parametrizedType [
	<generated>
	^ super parametrizedType flatten ==> [ :production | PWBASTParametrizedType new parametrizedType: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> parenthesedExpression [
	<generated>
	^ super parenthesedExpression ==> [ :production | PWBASTParenthesedExpression new expression: (production at: 3); yourself ]
]

{ #category : #rules }
PWBWindowParser >> postFixOperator [
	<generated>
	^ super postFixOperator ==> [ :production | PWBASTPostFixOperator new access: (production at: 1); yourself ]
]

{ #category : #rules }
PWBWindowParser >> programStep [
	<generated>
	^ super programStep ==> [ :production | PWBASTProgramStep new identifier: (production at: 1); yourself ]
]

{ #category : #rules }
PWBWindowParser >> prototypesDeclaration [
	<generated>
	^ super prototypesDeclaration ==> [ :production | PWBASTPrototypesDeclaration new declarations: (self rejectSeparators: (production at: 3)); yourself ]
]

{ #category : #helpers }
PWBWindowParser >> rejectSeparators: anArray [
	<generated>
	^ anArray withIndexSelect: [:anElement :anIndex | anIndex odd]
]

{ #category : #rules }
PWBWindowParser >> returnStatement [
	<generated>
	^ super returnStatement ==> [ :production | PWBASTReturnStatement new expression: ((production at: 2) ifNotNil: [((production at: 2) at: 2)]); yourself ]
]

{ #category : #helpers }
PWBWindowParser >> selectSeparators: anArray [
	<generated>
	^ anArray withIndexSelect: [:anElement :anIndex | anIndex even]
]

{ #category : #rules }
PWBWindowParser >> specialStatement [
	<generated>
	^ super specialStatement ==> [ :production | PWBASTSpecialStatement new specialStatement: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> sqlCommitStatement [
	<generated>
	^ super sqlCommitStatement ==> [ :production | PWBASTSqlCommitStatement new usingClause: ((production at: 3) ifNotNil: [((production at: 3) at: 1)]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> sqlQuery [
	<generated>
	^ super sqlQuery flatten ==> [ :production | PWBASTSqlQuery new sqlQuery: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> sqlRollbackStatement [
	<generated>
	^ super sqlRollbackStatement ==> [ :production | PWBASTSqlRollbackStatement new usingClause: ((production at: 3) ifNotNil: [((production at: 3) at: 1)]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> statement [
	<generated>
	^ super statement ==> [ :production | PWBASTStatement new statement: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> statements [
	<generated>
	^ super statements ==> [ :production | PWBASTStatements new statements: (self rejectSeparators: production); yourself ]
]

{ #category : #rules }
PWBWindowParser >> string [
	<generated>
	^ super string flatten ==> [ :production | PWBASTString new string: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> subroutineDeclaration [
	<generated>
	^ super subroutineDeclaration ==> [ :production | PWBASTSubroutineDeclaration new subroutineSignature: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> subroutineDefinition [
	<generated>
	^ super subroutineDefinition ==> [ :production | PWBASTSubroutineDefinition new subroutineSignature: (production at: 1); statements: (production at: 4); yourself ]
]

{ #category : #rules }
PWBWindowParser >> subroutineSignature [
	<generated>
	^ super subroutineSignature ==> [ :production | PWBASTSubroutineSignature new accessModifier: (production at: 1); identifier: (production at: 5); arguments: (production at: 7); yourself ]
]

{ #category : #rules }
PWBWindowParser >> this [
	<generated>
	^ super this flatten ==> [ :production | PWBASTThis new this: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> transactionObject [
	<generated>
	^ super transactionObject ==> [ :production | PWBASTTransactionObject new identifier: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> triggerDefinition [
	<generated>
	^ super triggerDefinition ==> [ :production | PWBASTTriggerDefinition new identifier: (production at: 3); eventType: (production at: 5); statements: (production at: 7); yourself ]
]

{ #category : #rules }
PWBWindowParser >> tryCatch [
	<generated>
	^ super tryCatch ==> [ :production | PWBASTTryCatch new statements: ((production at: 2) ifNotNil: [((production at: 2) at: 2)]); catchBlocks: ((production at: 3) collect: [:subProduction | subProduction at: 2]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> type [
	<generated>
	^ super type ==> [ :production | PWBASTType new type: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> typeDeclaration [
	<generated>
	^ super typeDeclaration ==> [ :production | PWBASTTypeDeclaration new type: (production at: 4); fromClause: ((production at: 6) at: 2); eventType: ((production at: 7) ifNotNil: [((production at: 7) at: 2)]); withinClause: ((production at: 8) ifNotNil: [((production at: 8) at: 2)]); descriptor: ((production at: 9) ifNotNil: [((production at: 9) at: 2)]); attributes: ((production at: 10) ifNotNil: [((production at: 10) at: 2)]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> typeVariable [
	<generated>
	^ super typeVariable ==> [ :production | PWBASTTypeVariable new attributes: (production ifNotNil: [(production at: 3)]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> uncheckedIdentifier [
	<generated>
	^ super uncheckedIdentifier flatten ==> [ :production | PWBASTUncheckedIdentifier new uncheckedIdentifier: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> usingClause [
	<generated>
	^ super usingClause ==> [ :production | PWBASTUsingClause new transactionObject: (production at: 3); yourself ]
]

{ #category : #rules }
PWBWindowParser >> variable [
	<generated>
	^ super variable ==> [ :production | PWBASTVariable new this: (production ifNotNil: [(production at: 1)]); identifier: (production at: 2); arrayWithSize: (production ifNotNil: [(production at: 4)]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> variableAssignation [
	<generated>
	^ super variableAssignation ==> [ :production | PWBASTVariableAssignation new variable: (production at: 1); assignation: (production ifNotNil: [(production at: 2)]); yourself ]
]

{ #category : #rules }
PWBWindowParser >> variableDeclarations [
	<generated>
	^ super variableDeclarations ==> [ :production | PWBASTVariableDeclarations new type: (production at: 1); variableAssignations: (self rejectSeparators: (production at: 3)); yourself ]
]

{ #category : #rules }
PWBWindowParser >> windowFile [
	<generated>
	^ super windowFile ==> [ :production | PWBASTWindowFile new commonFile: production; yourself ]
]

{ #category : #rules }
PWBWindowParser >> withinClause [
	<generated>
	^ super withinClause ==> [ :production | PWBASTWithinClause new customType: (production at: 3); yourself ]
]
