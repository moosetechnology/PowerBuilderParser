Class {
	#name : #PWBDataWindowParser,
	#superclass : #PWBDataWindowGrammar,
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #rules }
PWBDataWindowParser >> access [
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
PWBDataWindowParser >> accessOrType [
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
PWBDataWindowParser >> argument [
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
PWBDataWindowParser >> argumentOption [
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
PWBDataWindowParser >> arguments [
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
PWBDataWindowParser >> array [
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
PWBDataWindowParser >> arrayDesignation [
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
PWBDataWindowParser >> arrayPosition [
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
PWBDataWindowParser >> arrayWithSize [
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
PWBDataWindowParser >> assignation [
	<generated>
	^ super assignation withPositions
		==> [ :production | 
			PWBASTAssignation new
				startPosition: production start;
				stopPosition: production stop;
				expression: (production content at: 2);
				graphicIndex:
					((production content at: 3)
						ifNotNil: [ (production content at: 3) at: 2 ]);
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> assignationStatement [
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
PWBDataWindowParser >> attributeAccess [
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
PWBDataWindowParser >> basicType [
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
PWBDataWindowParser >> booleanValue [
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
PWBDataWindowParser >> callStatement [
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
PWBDataWindowParser >> column [
	<generated>
	^ super column withPositions
		==> [ :production | 
			PWBASTColumn new
				startPosition: production start;
				stopPosition: production stop;
				columnDefinition: (production content at: 3);
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> columnDefinition [
	<generated>
	^ super columnDefinition withPositions
		==> [ :production | 
			PWBASTColumnDefinition new
				startPosition: production start;
				stopPosition: production stop;
				options: (production content at: 2);
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> condition [
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
PWBDataWindowParser >> constant [
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
PWBDataWindowParser >> continueStatement [
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
PWBDataWindowParser >> createInstruction [
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
PWBDataWindowParser >> createUsingInstruction [
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
PWBDataWindowParser >> customType [
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
PWBDataWindowParser >> dataComponent [
	<generated>
	^ super dataComponent flatten withPositions
		==> [ :production | 
			PWBASTDataComponent new
				startPosition: production start;
				stopPosition: production stop;
				dataComponent: production content;
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> dataWindow [
	<generated>
	^ super dataWindow withPositions
		==> [ :production | 
			PWBASTDataWindow new
				startPosition: production start;
				stopPosition: production stop;
				parameters: (production content at: 2);
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> dataWindowFile [
	<generated>
	^ super dataWindowFile withPositions
		==> [ :production | 
			PWBASTDataWindowFile new
				startPosition: production start;
				stopPosition: production stop;
				fileStatements: (self rejectSeparators: (production content at: 1));
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> defaultEventType [
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
PWBDataWindowParser >> defaultVariable [
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
PWBDataWindowParser >> destroyStatement [
	<generated>
	^ super destroyStatement withPositions
		==> [ :production | 
			PWBASTDestroyStatement new
				startPosition: production start;
				stopPosition: production stop;
				accessOrType: (production content at: 3);
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> dynamicMethodInvocation [
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
PWBDataWindowParser >> else [
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
PWBDataWindowParser >> elseIf [
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
PWBDataWindowParser >> elseOnLine [
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
PWBDataWindowParser >> eventInvocation [
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
PWBDataWindowParser >> eventLong [
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
PWBDataWindowParser >> eventName [
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
PWBDataWindowParser >> eventTriggeringOrPosting [
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
PWBDataWindowParser >> eventType [
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
PWBDataWindowParser >> eventWord [
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
PWBDataWindowParser >> exitStatement [
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
PWBDataWindowParser >> export [
	<generated>
	^ super export withPositions
		==> [ :production | 
			PWBASTExport new
				startPosition: production start;
				stopPosition: production stop;
				formatType: (production content at: 2);
				parameters: (production content at: 3);
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> expression [
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
PWBDataWindowParser >> expressionAction [
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
PWBDataWindowParser >> expressionTerm [
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
PWBDataWindowParser >> expressionWithSign [
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
PWBDataWindowParser >> file [
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
PWBDataWindowParser >> formatType [
	<generated>
	^ super formatType flatten withPositions
		==> [ :production | 
			PWBASTFormatType new
				startPosition: production start;
				stopPosition: production stop;
				formatType: production content;
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> fullInvocation [
	<generated>
	^ super fullInvocation withPositions
		==> [ :production | 
			PWBASTFullInvocation new
				startPosition: production start;
				stopPosition: production stop;
				expressionTerm: (production content at: 1);
				expressionAction: (production content at: 2);
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> functionArgument [
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
PWBDataWindowParser >> functionArguments [
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
PWBDataWindowParser >> functionInvocation [
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
PWBDataWindowParser >> generator [
	<generated>
	^ super generator withPositions
		==> [ :production | 
			PWBASTGenerator new
				startPosition: production start;
				stopPosition: production stop;
				generatorToken: (production content at: 1);
				parameters: (production content at: 2);
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> generatorToken [
	<generated>
	^ super generatorToken flatten withPositions
		==> [ :production | 
			PWBASTGeneratorToken new
				startPosition: production start;
				stopPosition: production stop;
				generatorToken: production content;
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> graphicComponent [
	<generated>
	^ super graphicComponent withPositions
		==> [ :production | 
			PWBASTGraphicComponent new
				startPosition: production start;
				stopPosition: production stop;
				graphicComponentToken: (production content at: 1);
				parameters: (production content at: 2);
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> graphicComponentToken [
	<generated>
	^ super graphicComponentToken flatten withPositions
		==> [ :production | 
			PWBASTGraphicComponentToken new
				startPosition: production start;
				stopPosition: production stop;
				graphicComponentToken: production content;
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> identifier [
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
PWBDataWindowParser >> ifMultiLine [
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
PWBDataWindowParser >> ifSingleLine [
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
PWBDataWindowParser >> ifStatement [
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
PWBDataWindowParser >> import [
	<generated>
	^ super import withPositions
		==> [ :production | 
			PWBASTImport new
				startPosition: production start;
				stopPosition: production stop;
				formatType: (production content at: 2);
				parameters: (production content at: 3);
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> intervalExpression [
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
PWBDataWindowParser >> methodInvocation [
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
PWBDataWindowParser >> notExpression [
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
PWBDataWindowParser >> number [
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
PWBDataWindowParser >> operatorExpression [
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
PWBDataWindowParser >> oppositeFullInvocation [
	<generated>
	^ super oppositeFullInvocation flatten withPositions
		==> [ :production | 
			PWBASTOppositeFullInvocation new
				startPosition: production start;
				stopPosition: production stop;
				oppositeFullInvocation: production content;
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> option [
	<generated>
	^ super option withPositions
		==> [ :production | 
			PWBASTOption new
				startPosition: production start;
				stopPosition: production stop;
				assignationStatement: production content;
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> optionValue [
	<generated>
	^ super optionValue withPositions
		==> [ :production | 
			PWBASTOptionValue new
				startPosition: production start;
				stopPosition: production stop;
				expression: (production content at: 1);
				graphicIndex:
					((production content at: 2)
						ifNotNil: [ (production content at: 2) at: 2 ]);
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> options [
	<generated>
	^ super options withPositions
		==> [ :production | 
			PWBASTOptions new
				startPosition: production start;
				stopPosition: production stop;
				options: (self rejectSeparators: production content);
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> parameters [
	<generated>
	^ super parameters withPositions
		==> [ :production | 
			PWBASTParameters new
				startPosition: production start;
				stopPosition: production stop;
				options: (production content at: 2);
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> parametrizedType [
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
PWBDataWindowParser >> parenthesedArray [
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
PWBDataWindowParser >> parenthesedExpression [
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
PWBDataWindowParser >> postEvent [
	<generated>
	^ super postEvent flatten withPositions
		==> [ :production | 
			PWBASTPostEvent new
				startPosition: production start;
				stopPosition: production stop;
				postEvent: production content;
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> postFixOperator [
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
PWBDataWindowParser >> regularMethodInvocation [
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
PWBDataWindowParser >> rejectSeparators: anArray [
	<generated>
	^ anArray withIndexSelect: [:anElement :anIndex | anIndex odd]
]

{ #category : #rules }
PWBDataWindowParser >> returnStatement [
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
PWBDataWindowParser >> selectSeparators: anArray [
	<generated>
	^ anArray withIndexSelect: [:anElement :anIndex | anIndex even]
]

{ #category : #rules }
PWBDataWindowParser >> specialStatement [
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
PWBDataWindowParser >> specialVariable [
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
PWBDataWindowParser >> statement [
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
PWBDataWindowParser >> statements [
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
PWBDataWindowParser >> string [
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
PWBDataWindowParser >> table [
	<generated>
	^ super table withPositions
		==> [ :production | 
			PWBASTTable new
				startPosition: production start;
				stopPosition: production stop;
				columns: (self rejectSeparators: (production content at: 3));
				options: (production content at: 5);
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> template [
	<generated>
	^ super template withPositions
		==> [ :production | 
			PWBASTTemplate new
				startPosition: production start;
				stopPosition: production stop;
				options: (self rejectSeparators: (production content at: 4));
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> this [
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
PWBDataWindowParser >> time [
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
PWBDataWindowParser >> triggerEvent [
	<generated>
	^ super triggerEvent flatten withPositions
		==> [ :production | 
			PWBASTTriggerEvent new
				startPosition: production start;
				stopPosition: production stop;
				triggerEvent: production content;
				yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> type [
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
PWBDataWindowParser >> uncheckedIdentifier [
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
PWBDataWindowParser >> variable [
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
