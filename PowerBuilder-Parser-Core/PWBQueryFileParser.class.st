Class {
	#name : #PWBQueryFileParser,
	#superclass : #PWBQueryFileGrammar,
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #rules }
PWBQueryFileParser >> access [
	<generated>
	^ super access withPositions
		==> [ :production | 
			PWBASTAccess new
				startPosition: production start;
				stopPosition: production stop;
				variable: (production content at: 1);
				arrayPosition: (production content at: 2);
				attributeAccesses: (production content at: 3);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> accessOrType [
	<generated>
	^ super accessOrType withPositions
		==> [ :production | 
			PWBASTAccessOrType new
				startPosition: production start;
				stopPosition: production stop;
				accessOrType: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> argument [
	<generated>
	^ super argument withPositions
		==> [ :production | 
			PWBASTArgument new
				startPosition: production start;
				stopPosition: production stop;
				argumentOption:
					((production content at: 1)
						ifNotNil: [ (production content at: 1) at: 1 ]);
				type: (production content at: 2);
				identifier: (production content at: 4);
				arrayWithSize: (production content at: 5);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> argumentOption [
	<generated>
	^ super argumentOption flatten withPositions
		==> [ :production | 
			PWBASTArgumentOption new
				startPosition: production start;
				stopPosition: production stop;
				argumentOption: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> arguments [
	<generated>
	^ super arguments withPositions
		==> [ :production | 
			PWBASTArguments new
				startPosition: production start;
				stopPosition: production stop;
				arguments:
					((production content at: 3)
						ifNotNil: [ self rejectSeparators: (production content at: 3) ]);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> array [
	<generated>
	^ super array withPositions
		==> [ :production | 
			PWBASTArray new
				startPosition: production start;
				stopPosition: production stop;
				expressions: (self rejectSeparators: (production content at: 2));
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> arrayDesignation [
	<generated>
	^ super arrayDesignation flatten withPositions
		==> [ :production | 
			PWBASTArrayDesignation new
				startPosition: production start;
				stopPosition: production stop;
				arrayDesignation: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> arrayPosition [
	<generated>
	^ super arrayPosition withPositions
		==> [ :production | 
			PWBASTArrayPosition new
				startPosition: production start;
				stopPosition: production stop;
				expressions: (self rejectSeparators: (production content at: 2));
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> arrayWithInterval [
	<generated>
	^ super arrayWithInterval withPositions
		==> [ :production | 
			PWBASTArrayWithInterval new
				startPosition: production start;
				stopPosition: production stop;
				startIndex: (production content at: 3);
				endIndex: (production content at: 5);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> arrayWithSize [
	<generated>
	^ super arrayWithSize withPositions
		==> [ :production | 
			PWBASTArrayWithSize new
				startPosition: production start;
				stopPosition: production stop;
				expressions:
					((production content at: 4)
						ifNotNil: [ self rejectSeparators: (production content at: 4) ]);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> assignation [
	<generated>
	^ super assignation withPositions
		==> [ :production | 
			PWBASTAssignation new
				startPosition: production start;
				stopPosition: production stop;
				expression: (production content at: 4);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> assignationStatement [
	<generated>
	^ super assignationStatement withPositions
		==> [ :production | 
			PWBASTAssignationStatement new
				startPosition: production start;
				stopPosition: production stop;
				access: (production content at: 1);
				assignation: (production content at: 2);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> attributeAccess [
	<generated>
	^ super attributeAccess withPositions
		==> [ :production | 
			PWBASTAttributeAccess new
				startPosition: production start;
				stopPosition: production stop;
				uncheckedIdentifier: (production content at: 2);
				arrayInformation: (production content at: 4);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> basicType [
	<generated>
	^ super basicType flatten withPositions
		==> [ :production | 
			PWBASTBasicType new
				startPosition: production start;
				stopPosition: production stop;
				basicType: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> booleanValue [
	<generated>
	^ super booleanValue flatten withPositions
		==> [ :production | 
			PWBASTBooleanValue new
				startPosition: production start;
				stopPosition: production stop;
				booleanValue: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> callStatement [
	<generated>
	^ super callStatement withPositions
		==> [ :production | 
			PWBASTCallStatement new
				startPosition: production start;
				stopPosition: production stop;
				variable: (production content at: 3);
				identifier:
					((production content at: 4)
						ifNotNil: [ (production content at: 4) at: 2 ]);
				eventType: (production content at: 6);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> condition [
	<generated>
	^ super condition withPositions
		==> [ :production | 
			PWBASTCondition new
				startPosition: production start;
				stopPosition: production stop;
				expression: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> constant [
	<generated>
	^ super constant flatten withPositions
		==> [ :production | 
			PWBASTConstant new
				startPosition: production start;
				stopPosition: production stop;
				constant: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> continueStatement [
	<generated>
	^ super continueStatement flatten withPositions
		==> [ :production | 
			PWBASTContinueStatement new
				startPosition: production start;
				stopPosition: production stop;
				continueStatement: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> createInstruction [
	<generated>
	^ super createInstruction withPositions
		==> [ :production | 
			PWBASTCreateInstruction new
				startPosition: production start;
				stopPosition: production stop;
				variable: (production content at: 3);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> customType [
	<generated>
	^ super customType withPositions
		==> [ :production | 
			PWBASTCustomType new
				startPosition: production start;
				stopPosition: production stop;
				identifier: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> defaultEventType [
	<generated>
	^ super defaultEventType flatten withPositions
		==> [ :production | 
			PWBASTDefaultEventType new
				startPosition: production start;
				stopPosition: production stop;
				defaultEventType: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> defaultVariable [
	<generated>
	^ super defaultVariable flatten withPositions
		==> [ :production | 
			PWBASTDefaultVariable new
				startPosition: production start;
				stopPosition: production stop;
				defaultVariable: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> dynamicMethodInvocation [
	<generated>
	^ super dynamicMethodInvocation withPositions
		==> [ :production | 
			PWBASTDynamicMethodInvocation new
				startPosition: production start;
				stopPosition: production stop;
				uncheckedIdentifier: (production content at: 5);
				functionArguments: (production content at: 7);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> else [
	<generated>
	^ super else withPositions
		==> [ :production | 
			PWBASTElse new
				startPosition: production start;
				stopPosition: production stop;
				statements: (production content at: 3);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> elseIf [
	<generated>
	^ super elseIf withPositions
		==> [ :production | 
			PWBASTElseIf new
				startPosition: production start;
				stopPosition: production stop;
				expression: (production content at: 3);
				statements: (production content at: 7);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> elseOnLine [
	<generated>
	^ super elseOnLine withPositions
		==> [ :production | 
			PWBASTElseOnLine new
				startPosition: production start;
				stopPosition: production stop;
				statement: (production content at: 4);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> eventType [
	<generated>
	^ super eventType withPositions
		==> [ :production | 
			PWBASTEventType new
				startPosition: production start;
				stopPosition: production stop;
				eventType: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> exitStatement [
	<generated>
	^ super exitStatement flatten withPositions
		==> [ :production | 
			PWBASTExitStatement new
				startPosition: production start;
				stopPosition: production stop;
				exitStatement: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> expression [
	<generated>
	^ super expression withPositions
		==> [ :production | 
			PWBASTExpression new
				startPosition: production start;
				stopPosition: production stop;
				expression: (production content at: 1);
				methodInvocations: (production content at: 2);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> expressionTerm [
	<generated>
	^ super expressionTerm withPositions
		==> [ :production | 
			PWBASTExpressionTerm new
				startPosition: production start;
				stopPosition: production stop;
				expressionTerm: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> expressionWithSign [
	<generated>
	^ super expressionWithSign withPositions
		==> [ :production | 
			PWBASTExpressionWithSign new
				startPosition: production start;
				stopPosition: production stop;
				expression: (production content at: 3);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> file [
	<generated>
	^ super file withPositions
		==> [ :production | 
			PWBASTFile new
				startPosition: production start;
				stopPosition: production stop;
				content: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> functionArgument [
	<generated>
	^ super functionArgument withPositions
		==> [ :production | 
			PWBASTFunctionArgument new
				startPosition: production start;
				stopPosition: production stop;
				argumentOption:
					((production content at: 1)
						ifNotNil: [ (production content at: 1) at: 1 ]);
				expression: (production content at: 2);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> functionArguments [
	<generated>
	^ super functionArguments withPositions
		==> [ :production | 
			PWBASTFunctionArguments new
				startPosition: production start;
				stopPosition: production stop;
				functionArguments:
					((production content at: 2)
						ifNotNil: [ self rejectSeparators: (production content at: 2) ]);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> functionInvocation [
	<generated>
	^ super functionInvocation withPositions
		==> [ :production | 
			PWBASTFunctionInvocation new
				startPosition: production start;
				stopPosition: production stop;
				defaultVariable:
					((production content at: 1)
						ifNotNil: [ (production content at: 1) at: 1 ]);
				functionName: (production content at: 2);
				functionArguments: (production content at: 4);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> identifier [
	<generated>
	^ super identifier flatten withPositions
		==> [ :production | 
			PWBASTIdentifier new
				startPosition: production start;
				stopPosition: production stop;
				identifier: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> ifMultiLine [
	<generated>
	^ super ifMultiLine withPositions
		==> [ :production | 
			PWBASTIfMultiLine new
				startPosition: production start;
				stopPosition: production stop;
				condition: (production content at: 2);
				statements: (production content at: 5);
				elseIfs:
					((production content at: 6)
						collect: [ :subProduction | subProduction at: 2 ]);
				else:
					((production content at: 7)
						ifNotNil: [ (production content at: 7) at: 2 ]);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> ifSingleLine [
	<generated>
	^ super ifSingleLine withPositions
		==> [ :production | 
			PWBASTIfSingleLine new
				startPosition: production start;
				stopPosition: production stop;
				condition: (production content at: 2);
				statement: (production content at: 5);
				elseOnLine: (production content at: 6);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> ifStatement [
	<generated>
	^ super ifStatement withPositions
		==> [ :production | 
			PWBASTIfStatement new
				startPosition: production start;
				stopPosition: production stop;
				ifStatement: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> methodInvocation [
	<generated>
	^ super methodInvocation withPositions
		==> [ :production | 
			PWBASTMethodInvocation new
				startPosition: production start;
				stopPosition: production stop;
				methodInvocation: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> notExpression [
	<generated>
	^ super notExpression withPositions
		==> [ :production | 
			PWBASTNotExpression new
				startPosition: production start;
				stopPosition: production stop;
				expression: (production content at: 3);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> number [
	<generated>
	^ super number flatten withPositions
		==> [ :production | 
			PWBASTNumber new
				startPosition: production start;
				stopPosition: production stop;
				number: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> operatorExpression [
	<generated>
	^ super operatorExpression withPositions
		==> [ :production | 
			PWBASTOperatorExpression new
				startPosition: production start;
				stopPosition: production stop;
				left: (production content at: 1);
				methodInvocations: (production content at: 2);
				right: (production content at: 6);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> parametrizedType [
	<generated>
	^ super parametrizedType flatten withPositions
		==> [ :production | 
			PWBASTParametrizedType new
				startPosition: production start;
				stopPosition: production stop;
				parametrizedType: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> parenthesedArray [
	<generated>
	^ super parenthesedArray withPositions
		==> [ :production | 
			PWBASTParenthesedArray new
				startPosition: production start;
				stopPosition: production stop;
				expression: (production content at: 2);
				expressions:
					((production content at: 3)
						collect: [ :subProduction | subProduction at: 2 ]);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> parenthesedExpression [
	<generated>
	^ super parenthesedExpression withPositions
		==> [ :production | 
			PWBASTParenthesedExpression new
				startPosition: production start;
				stopPosition: production stop;
				expression: (production content at: 3);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> postFixOperator [
	<generated>
	^ super postFixOperator withPositions
		==> [ :production | 
			PWBASTPostFixOperator new
				startPosition: production start;
				stopPosition: production stop;
				access: (production content at: 1);
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> regularMethodInvocation [
	<generated>
	^ super regularMethodInvocation withPositions
		==> [ :production | 
			PWBASTRegularMethodInvocation new
				startPosition: production start;
				stopPosition: production stop;
				uncheckedIdentifier: (production content at: 4);
				functionArguments: (production content at: 6);
				yourself ]
]

{ #category : #helpers }
PWBQueryFileParser >> rejectSeparators: anArray [
	<generated>
	^ anArray withIndexSelect: [:anElement :anIndex | anIndex odd]
]

{ #category : #rules }
PWBQueryFileParser >> returnStatement [
	<generated>
	^ super returnStatement withPositions
		==> [ :production | 
			PWBASTReturnStatement new
				startPosition: production start;
				stopPosition: production stop;
				expression:
					((production content at: 2)
						ifNotNil: [ (production content at: 2) at: 2 ]);
				yourself ]
]

{ #category : #helpers }
PWBQueryFileParser >> selectSeparators: anArray [
	<generated>
	^ anArray withIndexSelect: [:anElement :anIndex | anIndex even]
]

{ #category : #rules }
PWBQueryFileParser >> specialStatement [
	<generated>
	^ super specialStatement withPositions
		==> [ :production | 
			PWBASTSpecialStatement new
				startPosition: production start;
				stopPosition: production stop;
				specialStatement: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> sqlQuery [
	<generated>
	^ super sqlQuery flatten withPositions
		==> [ :production | 
			PWBASTSqlQuery new
				startPosition: production start;
				stopPosition: production stop;
				sqlQuery: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> statement [
	<generated>
	^ super statement withPositions
		==> [ :production | 
			PWBASTStatement new
				startPosition: production start;
				stopPosition: production stop;
				statement: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> statements [
	<generated>
	^ super statements withPositions
		==> [ :production | 
			PWBASTStatements new
				startPosition: production start;
				stopPosition: production stop;
				statements: (self rejectSeparators: (production content at: 1));
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> string [
	<generated>
	^ super string flatten withPositions
		==> [ :production | 
			PWBASTString new
				startPosition: production start;
				stopPosition: production stop;
				string: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> this [
	<generated>
	^ super this flatten withPositions
		==> [ :production | 
			PWBASTThis new
				startPosition: production start;
				stopPosition: production stop;
				this: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> type [
	<generated>
	^ super type withPositions
		==> [ :production | 
			PWBASTType new
				startPosition: production start;
				stopPosition: production stop;
				type: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> uncheckedIdentifier [
	<generated>
	^ super uncheckedIdentifier flatten withPositions
		==> [ :production | 
			PWBASTUncheckedIdentifier new
				startPosition: production start;
				stopPosition: production stop;
				uncheckedIdentifier: production content;
				yourself ]
]

{ #category : #rules }
PWBQueryFileParser >> variable [
	<generated>
	^ super variable withPositions
		==> [ :production | 
			PWBASTVariable new
				startPosition: production start;
				stopPosition: production stop;
				this: (production content at: 1);
				identifier: (production content at: 2);
				arrayDefinition: (production content at: 5);
				yourself ]
]
