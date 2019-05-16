Class {
	#name : #PWBQueryFileParser,
	#superclass : #PWBQueryFileGrammar,
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #rules }
PWBQueryFileParser >> access [
	<generated>
	^ super access ==> [ :production | PWBASTAccess new variable: (production at: 1); arrayPosition: (production ifNotNil: [(production at: 2)]); attributeAccesses: (production at: 3); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> accessOrType [
	<generated>
	^ super accessOrType ==> [ :production | PWBASTAccessOrType new accessOrType: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> argument [
	<generated>
	^ super argument ==> [ :production | PWBASTArgument new argumentOption: ((production at: 1) ifNotNil: [((production at: 1) at: 1)]); type: (production at: 2); identifier: (production at: 4); arrayWithSize: (production ifNotNil: [(production at: 5)]); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> argumentOption [
	<generated>
	^ super argumentOption flatten ==> [ :production | PWBASTArgumentOption new argumentOption: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> arguments [
	<generated>
	^ super arguments ==> [ :production | PWBASTArguments new arguments: ((production at: 3) ifNotNil: [(self rejectSeparators: (production at: 3))]); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> array [
	<generated>
	^ super array ==> [ :production | PWBASTArray new expressions: (self rejectSeparators: (production at: 2)); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> arrayDesignation [
	<generated>
	^ super arrayDesignation flatten ==> [ :production | PWBASTArrayDesignation new arrayDesignation: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> arrayPosition [
	<generated>
	^ super arrayPosition ==> [ :production | PWBASTArrayPosition new expression: (production at: 2); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> arrayWithSize [
	<generated>
	^ super arrayWithSize ==> [ :production | PWBASTArrayWithSize new expressions: ((production at: 4) ifNotNil: [(self rejectSeparators: (production at: 4))]); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> assignation [
	<generated>
	^ super assignation ==> [ :production | PWBASTAssignation new expression: (production at: 4); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> assignationStatement [
	<generated>
	^ super assignationStatement ==> [ :production | PWBASTAssignationStatement new access: (production at: 1); assignation: (production at: 2); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> attributeAccess [
	<generated>
	^ super attributeAccess ==> [ :production | PWBASTAttributeAccess new uncheckedIdentifier: (production at: 2); arrayInformation: (production ifNotNil: [(production at: 4)]); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> basicType [
	<generated>
	^ super basicType flatten ==> [ :production | PWBASTBasicType new basicType: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> booleanValue [
	<generated>
	^ super booleanValue flatten ==> [ :production | PWBASTBooleanValue new booleanValue: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> callStatement [
	<generated>
	^ super callStatement ==> [ :production | PWBASTCallStatement new variable: (production at: 3); identifier: ((production at: 4) ifNotNil: [((production at: 4) at: 2)]); eventType: (production at: 6); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> condition [
	<generated>
	^ super condition ==> [ :production | PWBASTCondition new expression: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> constant [
	<generated>
	^ super constant flatten ==> [ :production | PWBASTConstant new constant: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> continueStatement [
	<generated>
	^ super continueStatement flatten ==> [ :production | PWBASTContinueStatement new continueStatement: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> createInstruction [
	<generated>
	^ super createInstruction ==> [ :production | PWBASTCreateInstruction new variable: (production at: 3); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> customType [
	<generated>
	^ super customType ==> [ :production | PWBASTCustomType new identifier: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> defaultEventType [
	<generated>
	^ super defaultEventType flatten ==> [ :production | PWBASTDefaultEventType new defaultEventType: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> defaultVariable [
	<generated>
	^ super defaultVariable flatten ==> [ :production | PWBASTDefaultVariable new defaultVariable: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> dynamicMethodInvocation [
	<generated>
	^ super dynamicMethodInvocation ==> [ :production | PWBASTDynamicMethodInvocation new uncheckedIdentifier: (production at: 5); functionArguments: (production at: 7); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> else [
	<generated>
	^ super else ==> [ :production | PWBASTElse new statements: (production ifNotNil: [(production at: 3)]); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> elseIf [
	<generated>
	^ super elseIf ==> [ :production | PWBASTElseIf new expression: (production at: 3); statements: (production ifNotNil: [(production at: 7)]); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> elseOnLine [
	<generated>
	^ super elseOnLine ==> [ :production | PWBASTElseOnLine new statement: (production at: 4); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> eventType [
	<generated>
	^ super eventType ==> [ :production | PWBASTEventType new eventType: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> exitStatement [
	<generated>
	^ super exitStatement flatten ==> [ :production | PWBASTExitStatement new exitStatement: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> expression [
	<generated>
	^ super expression ==> [ :production | PWBASTExpression new expression: (production at: 1); methodInvocations: (production at: 2); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> expressionTerm [
	<generated>
	^ super expressionTerm ==> [ :production | PWBASTExpressionTerm new expressionTerm: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> expressionWithSign [
	<generated>
	^ super expressionWithSign ==> [ :production | PWBASTExpressionWithSign new expression: (production at: 3); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> file [
	<generated>
	^ super file ==> [ :production | PWBASTFile new content: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> functionArgument [
	<generated>
	^ super functionArgument ==> [ :production | PWBASTFunctionArgument new argumentOption: ((production at: 1) ifNotNil: [((production at: 1) at: 1)]); expression: (production at: 2); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> functionArguments [
	<generated>
	^ super functionArguments ==> [ :production | PWBASTFunctionArguments new functionArguments: ((production at: 2) ifNotNil: [(self rejectSeparators: (production at: 2))]); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> functionInvocation [
	<generated>
	^ super functionInvocation ==> [ :production | PWBASTFunctionInvocation new defaultVariable: ((production at: 1) ifNotNil: [((production at: 1) at: 1)]); functionName: (production at: 2); functionArguments: (production at: 4); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> identifier [
	<generated>
	^ super identifier flatten ==> [ :production | PWBASTIdentifier new identifier: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> ifMultiLine [
	<generated>
	^ super ifMultiLine ==> [ :production | PWBASTIfMultiLine new condition: (production at: 3); statements: (production ifNotNil: [(production at: 7)]); elseIfs: ((production at: 8) collect: [:subProduction | subProduction at: 2]); else: ((production at: 9) ifNotNil: [((production at: 9) at: 2)]); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> ifSingleLine [
	<generated>
	^ super ifSingleLine ==> [ :production | PWBASTIfSingleLine new condition: (production at: 3); statement: (production at: 7); elseOnLine: (production ifNotNil: [(production at: 8)]); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> ifStatement [
	<generated>
	^ super ifStatement ==> [ :production | PWBASTIfStatement new ifStatement: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> methodInvocation [
	<generated>
	^ super methodInvocation ==> [ :production | PWBASTMethodInvocation new methodInvocation: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> notExpression [
	<generated>
	^ super notExpression ==> [ :production | PWBASTNotExpression new expression: (production at: 3); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> number [
	<generated>
	^ super number flatten ==> [ :production | PWBASTNumber new number: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> operatorExpression [
	<generated>
	^ super operatorExpression ==> [ :production | PWBASTOperatorExpression new left: (production at: 1); methodInvocations: (production at: 2); right: (production at: 6); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> parametrizedType [
	<generated>
	^ super parametrizedType flatten ==> [ :production | PWBASTParametrizedType new parametrizedType: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> parenthesedArray [
	<generated>
	^ super parenthesedArray ==> [ :production | PWBASTParenthesedArray new expression: (production at: 2); expressions: ((production at: 3) collect: [:subProduction | subProduction at: 2]); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> parenthesedExpression [
	<generated>
	^ super parenthesedExpression ==> [ :production | PWBASTParenthesedExpression new expression: (production at: 3); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> postFixOperator [
	<generated>
	^ super postFixOperator ==> [ :production | PWBASTPostFixOperator new access: (production at: 1); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> regularMethodInvocation [
	<generated>
	^ super regularMethodInvocation ==> [ :production | PWBASTRegularMethodInvocation new uncheckedIdentifier: (production at: 4); functionArguments: (production at: 6); yourself ]
]

{ #category : #helpers }
PWBQueryFileParser >> rejectSeparators: anArray [
	<generated>
	^ anArray withIndexSelect: [:anElement :anIndex | anIndex odd]
]

{ #category : #rules }
PWBQueryFileParser >> returnStatement [
	<generated>
	^ super returnStatement ==> [ :production | PWBASTReturnStatement new expression: ((production at: 2) ifNotNil: [((production at: 2) at: 2)]); yourself ]
]

{ #category : #helpers }
PWBQueryFileParser >> selectSeparators: anArray [
	<generated>
	^ anArray withIndexSelect: [:anElement :anIndex | anIndex even]
]

{ #category : #rules }
PWBQueryFileParser >> specialStatement [
	<generated>
	^ super specialStatement ==> [ :production | PWBASTSpecialStatement new specialStatement: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> sqlQuery [
	<generated>
	^ super sqlQuery flatten ==> [ :production | PWBASTSqlQuery new sqlQuery: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> statement [
	<generated>
	^ super statement ==> [ :production | PWBASTStatement new statement: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> statements [
	<generated>
	^ super statements ==> [ :production | PWBASTStatements new statements: (self rejectSeparators: production); yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> string [
	<generated>
	^ super string flatten ==> [ :production | PWBASTString new string: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> this [
	<generated>
	^ super this flatten ==> [ :production | PWBASTThis new this: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> type [
	<generated>
	^ super type ==> [ :production | PWBASTType new type: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> uncheckedIdentifier [
	<generated>
	^ super uncheckedIdentifier flatten ==> [ :production | PWBASTUncheckedIdentifier new uncheckedIdentifier: production; yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> variable [
	<generated>
	^ super variable ==> [ :production | PWBASTVariable new this: (production ifNotNil: [(production at: 1)]); identifier: (production at: 2); arrayWithSize: (production ifNotNil: [(production at: 4)]); yourself ]
]
