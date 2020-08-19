Class {
	#name : #MrlPWBParser,
	#superclass : #MrlPWBGrammar,
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #rules }
MrlPWBParser >> access [
	<generated>
	^ super access withPositions
		==> [ :production | 
			PWBASTAccess new
				startPosition: production start;
				stopPosition: production stop;
				accessed: (production content at: 1);
				arrayPosition: (production content at: 2);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> accessOrType [
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
MrlPWBParser >> argument [
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
MrlPWBParser >> argumentOption [
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
MrlPWBParser >> arguments [
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
MrlPWBParser >> array [
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
MrlPWBParser >> arrayDesignation [
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
MrlPWBParser >> arrayPosition [
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
MrlPWBParser >> arrayWithSize [
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
MrlPWBParser >> assignation [
	<generated>
	^ super assignation withPositions
		==> [ :production | 
			PWBASTAssignation new
				startPosition: production start;
				stopPosition: production stop;
				expression: (production content at: 2);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> assignationStatement [
	<generated>
	^ super assignationStatement withPositions
		==> [ :production | 
			PWBASTAssignationStatement new
				startPosition: production start;
				stopPosition: production stop;
				accessOrType: (production content at: 1);
				expressionAction: (production content at: 2);
				assignation: (production content at: 3);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> attributeAccess [
	<generated>
	^ super attributeAccess withPositions
		==> [ :production | 
			PWBASTAttributeAccess new
				startPosition: production start;
				stopPosition: production stop;
				uncheckedIdentifier: (production content at: 2);
				arrayInformation:
					((production content at: 4)
						ifNotNil: [ (production content at: 4) at: 2 ]);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> basicType [
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
MrlPWBParser >> booleanValue [
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
MrlPWBParser >> callStatement [
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
MrlPWBParser >> condition [
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
MrlPWBParser >> constant [
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
MrlPWBParser >> continueStatement [
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
MrlPWBParser >> createInstruction [
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
MrlPWBParser >> createUsingInstruction [
	<generated>
	^ super createUsingInstruction withPositions
		==> [ :production | 
			PWBASTCreateUsingInstruction new
				startPosition: production start;
				stopPosition: production stop;
				expression: (production content at: 3);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> customType [
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
MrlPWBParser >> defaultEventType [
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
MrlPWBParser >> defaultVariable [
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
MrlPWBParser >> dynamicMethodInvocation [
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
MrlPWBParser >> else [
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
MrlPWBParser >> elseIf [
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
MrlPWBParser >> elseOnLine [
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
MrlPWBParser >> eventInvocation [
	<generated>
	^ super eventInvocation withPositions
		==> [ :production | 
			PWBASTEventInvocation new
				startPosition: production start;
				stopPosition: production stop;
				identifier: (production content at: 3);
				functionArguments: (production content at: 4);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> eventLong [
	<generated>
	^ super eventLong withPositions
		==> [ :production | 
			PWBASTEventLong new
				startPosition: production start;
				stopPosition: production stop;
				functionArgument: production content;
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> eventName [
	<generated>
	^ super eventName withPositions
		==> [ :production | 
			PWBASTEventName new
				startPosition: production start;
				stopPosition: production stop;
				eventName: production content;
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> eventTriggeringOrPosting [
	<generated>
	^ super eventTriggeringOrPosting withPositions
		==> [ :production | 
			PWBASTEventTriggeringOrPosting new
				startPosition: production start;
				stopPosition: production stop;
				identifiers:
					((production content at: 2)
						collect: [ :subProduction | subProduction at: 2 ]);
				arrayPositions:
					((production content at: 2)
						collect: [ :subProduction | subProduction at: 4 ]);
				eventName: (production content at: 6);
				eventWord:
					((production content at: 7)
						ifNotNil: [ (production content at: 7) at: 2 ]);
				eventLong:
					((production content at: 8)
						ifNotNil: [ (production content at: 8) at: 2 ]);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> eventType [
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
MrlPWBParser >> eventWord [
	<generated>
	^ super eventWord withPositions
		==> [ :production | 
			PWBASTEventWord new
				startPosition: production start;
				stopPosition: production stop;
				functionArgument: production content;
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> exitStatement [
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
MrlPWBParser >> expression [
	<generated>
	^ super expression withPositions
		==> [ :production | 
			PWBASTExpression new
				startPosition: production start;
				stopPosition: production stop;
				expression: (production content at: 1);
				expressionAction: (production content at: 2);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> expressionAction [
	<generated>
	^ super expressionAction withPositions
		==> [ :production | 
			PWBASTExpressionAction new
				startPosition: production start;
				stopPosition: production stop;
				action: (production content at: 1);
				expressionAction: (production content at: 2);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> expressionTerm [
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
MrlPWBParser >> expressionWithSign [
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
MrlPWBParser >> file [
	<generated>
	^ super file withPositions
		==> [ :production | 
			PWBASTFile new
				startPosition: production start;
				stopPosition: production stop;
				invocation: production content;
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> fullInvocation [
	<generated>
	^ super fullInvocation withPositions
		==> [ :production | 
			PWBASTFullInvocation new
				startPosition: production start;
				stopPosition: production stop;
				fullInvocation: production content;
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> functionArgument [
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
MrlPWBParser >> functionArguments [
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
MrlPWBParser >> functionInvocation [
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
MrlPWBParser >> identifier [
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
MrlPWBParser >> ifMultiLine [
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
MrlPWBParser >> ifSingleLine [
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
MrlPWBParser >> ifStatement [
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
MrlPWBParser >> intervalExpression [
	<generated>
	^ super intervalExpression withPositions
		==> [ :production | 
			PWBASTIntervalExpression new
				startPosition: production start;
				stopPosition: production stop;
				from: (production content at: 1);
				to: (production content at: 3);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> methodInvocation [
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
MrlPWBParser >> mrlInvocationLine [
	<generated>
	^ super mrlInvocationLine withPositions
		==> [ :production | 
			PWBASTMrlInvocationLine new
				startPosition: production start;
				stopPosition: production stop;
				mrlInvocationLines: production content;
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> mrlMethodInvocation [
	<generated>
	^ super mrlMethodInvocation withPositions
		==> [ :production | 
			PWBASTMrlMethodInvocation new
				startPosition: production start;
				stopPosition: production stop;
				expressionTerm: (production content at: 1);
				expressionAction: (production content at: 2);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> notExpression [
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
MrlPWBParser >> number [
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
MrlPWBParser >> operatorExpression [
	<generated>
	^ super operatorExpression withPositions
		==> [ :production | 
			PWBASTOperatorExpression new
				startPosition: production start;
				stopPosition: production stop;
				left: (production content at: 1);
				expressionAction: (production content at: 2);
				right: (production content at: 6);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> oppositeFullInvocation [
	<generated>
	^ super oppositeFullInvocation flatten withPositions
		==> [ :production |  ]
]

{ #category : #rules }
MrlPWBParser >> parametrizedType [
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
MrlPWBParser >> parenthesedArray [
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
MrlPWBParser >> parenthesedExpression [
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
MrlPWBParser >> postFixOperator [
	<generated>
	^ super postFixOperator withPositions
		==> [ :production | 
			PWBASTPostFixOperator new
				startPosition: production start;
				stopPosition: production stop;
				expression: (production content at: 1);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> regularMethodInvocation [
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
MrlPWBParser >> rejectSeparators: anArray [
	<generated>
	^ anArray withIndexSelect: [:anElement :anIndex | anIndex odd]
]

{ #category : #rules }
MrlPWBParser >> returnStatement [
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
MrlPWBParser >> selectSeparators: anArray [
	<generated>
	^ anArray withIndexSelect: [:anElement :anIndex | anIndex even]
]

{ #category : #rules }
MrlPWBParser >> specialStatement [
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
MrlPWBParser >> specialVariable [
	<generated>
	^ super specialVariable withPositions
		==> [ :production | 
			PWBASTSpecialVariable new
				startPosition: production start;
				stopPosition: production stop;
				this: production content;
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> statement [
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
MrlPWBParser >> statements [
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
MrlPWBParser >> string [
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
MrlPWBParser >> this [
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
MrlPWBParser >> time [
	<generated>
	^ super time flatten withPositions
		==> [ :production | 
			PWBASTTime new
				startPosition: production start;
				stopPosition: production stop;
				time: production content;
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> type [
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
MrlPWBParser >> uncheckedIdentifier [
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
MrlPWBParser >> variable [
	<generated>
	^ super variable withPositions
		==> [ :production | 
			PWBASTVariable new
				startPosition: production start;
				stopPosition: production stop;
				identifier: (production content at: 1);
				arrayDefinition: (production content at: 4);
				yourself ]
]
