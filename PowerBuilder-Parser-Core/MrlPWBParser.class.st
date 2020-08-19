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
MrlPWBParser >> accessModifier [
	<generated>
	^ super accessModifier flatten withPositions
		==> [ :production | 
			PWBASTAccessModifier new
				startPosition: production start;
				stopPosition: production stop;
				accessModifier: production content;
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> accessModifierDefiner [
	<generated>
	^ super accessModifierDefiner withPositions
		==> [ :production | 
			PWBASTAccessModifierDefiner new
				startPosition: production start;
				stopPosition: production stop;
				accessModifier: (production content at: 1);
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
MrlPWBParser >> attribute [
	<generated>
	^ super attribute withPositions
		==> [ :production | 
			PWBASTAttribute new
				startPosition: production start;
				stopPosition: production stop;
				accessModifier:
					((production content at: 2)
						ifNotNil: [ (production content at: 2) at: 1 ]);
				variableDeclarations: (production content at: 4);
				descriptor:
					((production content at: 5)
						ifNotNil: [ (production content at: 5) at: 2 ]);
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
MrlPWBParser >> attributes [
	<generated>
	^ super attributes withPositions
		==> [ :production | 
			PWBASTAttributes new
				startPosition: production start;
				stopPosition: production stop;
				attributes: (self rejectSeparators: (production content at: 1));
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
MrlPWBParser >> behaviouralAlias [
	<generated>
	^ super behaviouralAlias withPositions
		==> [ :production | 
			PWBASTBehaviouralAlias new
				startPosition: production start;
				stopPosition: production stop;
				alias: (production content at: 3);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> behaviouralLibrary [
	<generated>
	^ super behaviouralLibrary withPositions
		==> [ :production | 
			PWBASTBehaviouralLibrary new
				startPosition: production start;
				stopPosition: production stop;
				libraryFile: (production content at: 3);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> behaviouralOption [
	<generated>
	^ super behaviouralOption withPositions
		==> [ :production | 
			PWBASTBehaviouralOption new
				startPosition: production start;
				stopPosition: production stop;
				behaviouralOption: production content;
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
MrlPWBParser >> case [
	<generated>
	^ super case withPositions
		==> [ :production | 
			PWBASTCase new
				startPosition: production start;
				stopPosition: production stop;
				case: production content;
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> caseElse [
	<generated>
	^ super caseElse withPositions
		==> [ :production | 
			PWBASTCaseElse new
				startPosition: production start;
				stopPosition: production stop;
				statements: (production content at: 5);
				statement: (production content at: 7);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> catchBlock [
	<generated>
	^ super catchBlock withPositions
		==> [ :production | 
			PWBASTCatchBlock new
				startPosition: production start;
				stopPosition: production stop;
				arguments: (production content at: 3);
				statements:
					((production content at: 4)
						ifNotNil: [ (production content at: 4) at: 2 ]);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> chooseCase [
	<generated>
	^ super chooseCase withPositions
		==> [ :production | 
			PWBASTChooseCase new
				startPosition: production start;
				stopPosition: production stop;
				expression: (production content at: 5);
				cases: (self rejectSeparators: (production content at: 7));
				caseElse:
					((production content at: 9)
						ifNotNil: [ (production content at: 9) at: 1 ]);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> closeSqlCursor [
	<generated>
	^ super closeSqlCursor withPositions
		==> [ :production | 
			PWBASTCloseSqlCursor new
				startPosition: production start;
				stopPosition: production stop;
				identifier: (production content at: 3);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> commonFile [
	<generated>
	^ super commonFile withPositions
		==> [ :production | 
			PWBASTCommonFile new
				startPosition: production start;
				stopPosition: production stop;
				fileStatements: (self rejectSeparators: production content);
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
MrlPWBParser >> customCallStatement [
	<generated>
	^ super customCallStatement withPositions
		==> [ :production | 
			PWBASTCustomCallStatement new
				startPosition: production start;
				stopPosition: production stop;
				identifier: (production content at: 5);
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
MrlPWBParser >> declareCursor [
	<generated>
	^ super declareCursor withPositions
		==> [ :production | 
			PWBASTDeclareCursor new
				startPosition: production start;
				stopPosition: production stop;
				identifier: (production content at: 3);
				target: (production content at: 10);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> declareProcedure [
	<generated>
	^ super declareProcedure withPositions
		==> [ :production | 
			PWBASTDeclareProcedure new
				startPosition: production start;
				stopPosition: production stop;
				procedureName: (production content at: 3);
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
MrlPWBParser >> descriptor [
	<generated>
	^ super descriptor withPositions
		==> [ :production | 
			PWBASTDescriptor new
				startPosition: production start;
				stopPosition: production stop;
				expression: (production content at: 3);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> destroyStatement [
	<generated>
	^ super destroyStatement withPositions
		==> [ :production | 
			PWBASTDestroyStatement new
				startPosition: production start;
				stopPosition: production stop;
				expression: (production content at: 3);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> doLoopUntil [
	<generated>
	^ super doLoopUntil withPositions
		==> [ :production | 
			PWBASTDoLoopUntil new
				startPosition: production start;
				stopPosition: production stop;
				statements: (production content at: 3);
				expression: (production content at: 9);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> doLoopWhile [
	<generated>
	^ super doLoopWhile withPositions
		==> [ :production | 
			PWBASTDoLoopWhile new
				startPosition: production start;
				stopPosition: production stop;
				statements: (production content at: 3);
				expression: (production content at: 9);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> doUntilLoop [
	<generated>
	^ super doUntilLoop withPositions
		==> [ :production | 
			PWBASTDoUntilLoop new
				startPosition: production start;
				stopPosition: production stop;
				expression: (production content at: 5);
				statements: (production content at: 7);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> doWhileLoop [
	<generated>
	^ super doWhileLoop withPositions
		==> [ :production | 
			PWBASTDoWhileLoop new
				startPosition: production start;
				stopPosition: production stop;
				expression: (production content at: 5);
				statements: (production content at: 7);
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
MrlPWBParser >> endForward [
	<generated>
	^ super endForward flatten withPositions
		==> [ :production | 
			PWBASTEndForward new
				startPosition: production start;
				stopPosition: production stop;
				endForward: production content;
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> eventAttribute [
	<generated>
	^ super eventAttribute withPositions
		==> [ :production | 
			PWBASTEventAttribute new
				startPosition: production start;
				stopPosition: production stop;
				returnType:
					((production content at: 3)
						ifNotNil: [ (production content at: 3) at: 3 ]);
				eventName: (production content at: 4);
				attribute: (production content at: 6);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> eventDeclaration [
	<generated>
	^ super eventDeclaration withPositions
		==> [ :production | 
			PWBASTEventDeclaration new
				startPosition: production start;
				stopPosition: production stop;
				returnType:
					((production content at: 3)
						ifNotNil: [ (production content at: 3) at: 3 ]);
				eventReferenceName: (production content at: 4);
				customCallStatement:
					((production content at: 6)
						ifNotNil: [ (production content at: 6) at: 1 ]);
				statements: (production content at: 8);
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
MrlPWBParser >> eventReferenceName [
	<generated>
	^ super eventReferenceName withPositions
		==> [ :production | 
			PWBASTEventReferenceName new
				startPosition: production start;
				stopPosition: production stop;
				objectClass:
					((production content at: 1)
						ifNotNil: [ (production content at: 1) at: 1 ]);
				eventName: (production content at: 2);
				arguments: (production content at: 3);
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
MrlPWBParser >> executeProcedure [
	<generated>
	^ super executeProcedure withPositions
		==> [ :production | 
			PWBASTExecuteProcedure new
				startPosition: production start;
				stopPosition: production stop;
				immediate: (production content at: 2) notNil;
				procedureName: (production content at: 4);
				usingClause: (production content at: 5);
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
MrlPWBParser >> expressionList [
	<generated>
	^ super expressionList withPositions
		==> [ :production | 
			PWBASTExpressionList new
				startPosition: production start;
				stopPosition: production stop;
				expressions: (self rejectSeparators: production content);
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
MrlPWBParser >> finallyBlock [
	<generated>
	^ super finallyBlock withPositions
		==> [ :production | 
			PWBASTFinallyBlock new
				startPosition: production start;
				stopPosition: production stop;
				statements:
					((production content at: 2)
						ifNotNil: [ (production content at: 2) at: 2 ]);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> forLoop [
	<generated>
	^ super forLoop withPositions
		==> [ :production | 
			PWBASTForLoop new
				startPosition: production start;
				stopPosition: production stop;
				assignationStatement: (production content at: 3);
				endExpression: (production content at: 7);
				stepExpression:
					((production content at: 8)
						ifNotNil: [ (production content at: 8) at: 4 ]);
				statements:
					((production content at: 10)
						ifNotNil: [ (production content at: 10) at: 1 ]);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> forwardDeclaration [
	<generated>
	^ super forwardDeclaration withPositions
		==> [ :production | 
			PWBASTForwardDeclaration new
				startPosition: production start;
				stopPosition: production stop;
				typeDeclarations: (self rejectSeparators: (production content at: 3));
				endForward: (production content at: 5);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> fromClause [
	<generated>
	^ super fromClause withPositions
		==> [ :production | 
			PWBASTFromClause new
				startPosition: production start;
				stopPosition: production stop;
				customType: (production content at: 3);
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
MrlPWBParser >> functionDeclaration [
	<generated>
	^ super functionDeclaration withPositions
		==> [ :production | 
			PWBASTFunctionDeclaration new
				startPosition: production start;
				stopPosition: production stop;
				functionSignature: (production content at: 1);
				behaviouralOptions:
					((production content at: 2)
						collect: [ :subProduction | subProduction at: 2 ]);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> functionDefinition [
	<generated>
	^ super functionDefinition withPositions
		==> [ :production | 
			PWBASTFunctionDefinition new
				startPosition: production start;
				stopPosition: production stop;
				functionSignature: (production content at: 1);
				statements: (production content at: 4);
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
MrlPWBParser >> functionSignature [
	<generated>
	^ super functionSignature withPositions
		==> [ :production | 
			PWBASTFunctionSignature new
				startPosition: production start;
				stopPosition: production stop;
				accessModifier:
					((production content at: 1)
						ifNotNil: [ (production content at: 1) at: 1 ]);
				type: (production content at: 4);
				identifier: (production content at: 6);
				arguments: (production content at: 8);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> globalVariableDeclaration [
	<generated>
	^ super globalVariableDeclaration withPositions
		==> [ :production | 
			PWBASTGlobalVariableDeclaration new
				startPosition: production start;
				stopPosition: production stop;
				type: (production content at: 3);
				variable: (production content at: 5);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> globalVariables [
	<generated>
	^ super globalVariables withPositions
		==> [ :production | 
			PWBASTGlobalVariables new
				startPosition: production start;
				stopPosition: production stop;
				attributes: (production content at: 3);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> gotoStatement [
	<generated>
	^ super gotoStatement withPositions
		==> [ :production | 
			PWBASTGotoStatement new
				startPosition: production start;
				stopPosition: production stop;
				identifier: (production content at: 3);
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
MrlPWBParser >> mrlSignatures [
	<generated>
	^ super mrlSignatures withPositions
		==> [ :production | 
			PWBASTMrlSignatures new
				startPosition: production start;
				stopPosition: production stop;
				mrlSignatures: production content;
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> multiLineCase [
	<generated>
	^ super multiLineCase withPositions
		==> [ :production | 
			PWBASTMultiLineCase new
				startPosition: production start;
				stopPosition: production stop;
				expressionList: (production content at: 3);
				statements: (production content at: 5);
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
MrlPWBParser >> openSqlCursor [
	<generated>
	^ super openSqlCursor withPositions
		==> [ :production | 
			PWBASTOpenSqlCursor new
				startPosition: production start;
				stopPosition: production stop;
				identifier: (production content at: 4);
				descriptor:
					((production content at: 5)
						ifNotNil: [ (production content at: 5) at: 2 ]);
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
		==> [ :production | 
			PWBASTOppositeFullInvocation new
				startPosition: production start;
				stopPosition: production stop;
				oppositeFullInvocation: production content;
				yourself ]
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
MrlPWBParser >> prepareSQL [
	<generated>
	^ super prepareSQL withPositions
		==> [ :production | 
			PWBASTPrepareSQL new
				startPosition: production start;
				stopPosition: production stop;
				identifier: (production content at: 2);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> programStep [
	<generated>
	^ super programStep withPositions
		==> [ :production | 
			PWBASTProgramStep new
				startPosition: production start;
				stopPosition: production stop;
				identifier: (production content at: 1);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> prototypesDeclaration [
	<generated>
	^ super prototypesDeclaration withPositions
		==> [ :production | 
			PWBASTPrototypesDeclaration new
				startPosition: production start;
				stopPosition: production stop;
				declarations:
					((production content at: 3)
						ifNotNil: [ self rejectSeparators: (production content at: 3) ]);
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
MrlPWBParser >> sharedVariables [
	<generated>
	^ super sharedVariables withPositions
		==> [ :production | 
			PWBASTSharedVariables new
				startPosition: production start;
				stopPosition: production stop;
				attributes: (production content at: 3);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> singleLineCase [
	<generated>
	^ super singleLineCase withPositions
		==> [ :production | 
			PWBASTSingleLineCase new
				startPosition: production start;
				stopPosition: production stop;
				expressionList: (production content at: 3);
				statement: (production content at: 5);
				yourself ]
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
MrlPWBParser >> sqlCommitStatement [
	<generated>
	^ super sqlCommitStatement withPositions
		==> [ :production | 
			PWBASTSqlCommitStatement new
				startPosition: production start;
				stopPosition: production stop;
				usingClause:
					((production content at: 3)
						ifNotNil: [ (production content at: 3) at: 1 ]);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> sqlQuery [
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
MrlPWBParser >> sqlRollbackStatement [
	<generated>
	^ super sqlRollbackStatement withPositions
		==> [ :production | 
			PWBASTSqlRollbackStatement new
				startPosition: production start;
				stopPosition: production stop;
				usingClause:
					((production content at: 3)
						ifNotNil: [ (production content at: 3) at: 1 ]);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> sqlVariable [
	<generated>
	^ super sqlVariable withPositions
		==> [ :production | 
			PWBASTSqlVariable new
				startPosition: production start;
				stopPosition: production stop;
				identifier: (production content at: 1);
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
MrlPWBParser >> subroutineDeclaration [
	<generated>
	^ super subroutineDeclaration withPositions
		==> [ :production | 
			PWBASTSubroutineDeclaration new
				startPosition: production start;
				stopPosition: production stop;
				subroutineSignature: (production content at: 1);
				behaviouralOptions:
					((production content at: 2)
						collect: [ :subProduction | subProduction at: 2 ]);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> subroutineDefinition [
	<generated>
	^ super subroutineDefinition withPositions
		==> [ :production | 
			PWBASTSubroutineDefinition new
				startPosition: production start;
				stopPosition: production stop;
				subroutineSignature: (production content at: 1);
				statements: (production content at: 4);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> subroutineSignature [
	<generated>
	^ super subroutineSignature withPositions
		==> [ :production | 
			PWBASTSubroutineSignature new
				startPosition: production start;
				stopPosition: production stop;
				accessModifier:
					((production content at: 1)
						ifNotNil: [ (production content at: 1) at: 1 ]);
				identifier: (production content at: 4);
				arguments: (production content at: 6);
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
MrlPWBParser >> transactionObject [
	<generated>
	^ super transactionObject withPositions
		==> [ :production | 
			PWBASTTransactionObject new
				startPosition: production start;
				stopPosition: production stop;
				identifier: production content;
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> triggerDefinition [
	<generated>
	^ super triggerDefinition withPositions
		==> [ :production | 
			PWBASTTriggerDefinition new
				startPosition: production start;
				stopPosition: production stop;
				identifier:
					((production content at: 3)
						ifNotNil: [ (production content at: 3) at: 1 ]);
				eventType: (production content at: 4);
				statements:
					((production content at: 6)
						ifNotNil: [ (production content at: 6) at: 2 ]);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> tryCatch [
	<generated>
	^ super tryCatch withPositions
		==> [ :production | 
			PWBASTTryCatch new
				startPosition: production start;
				stopPosition: production stop;
				statements:
					((production content at: 2)
						ifNotNil: [ (production content at: 2) at: 2 ]);
				catchBlocks:
					((production content at: 3)
						collect: [ :subProduction | subProduction at: 2 ]);
				finallyBlock:
					((production content at: 4)
						ifNotNil: [ (production content at: 4) at: 2 ]);
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
MrlPWBParser >> typeDeclaration [
	<generated>
	^ super typeDeclaration withPositions
		==> [ :production | 
			PWBASTTypeDeclaration new
				startPosition: production start;
				stopPosition: production stop;
				type: (production content at: 4);
				fromClause: ((production content at: 6) at: 2);
				eventType:
					((production content at: 7)
						ifNotNil: [ (production content at: 7) at: 2 ]);
				withinClause:
					((production content at: 9)
						ifNotNil: [ (production content at: 9) at: 2 ]);
				descriptor:
					((production content at: 10)
						ifNotNil: [ (production content at: 10) at: 2 ]);
				attributes:
					((production content at: 11)
						ifNotNil: [ (production content at: 11) at: 2 ]);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> typePrototypes [
	<generated>
	^ super typePrototypes withPositions
		==> [ :production | 
			PWBASTTypePrototypes new
				startPosition: production start;
				stopPosition: production stop;
				declarations: (self rejectSeparators: (production content at: 3));
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> typeVariable [
	<generated>
	^ super typeVariable withPositions
		==> [ :production | 
			PWBASTTypeVariable new
				startPosition: production start;
				stopPosition: production stop;
				attributes: (production content at: 3);
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
MrlPWBParser >> usingClause [
	<generated>
	^ super usingClause withPositions
		==> [ :production | 
			PWBASTUsingClause new
				startPosition: production start;
				stopPosition: production stop;
				transactionObject: (production content at: 3);
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

{ #category : #rules }
MrlPWBParser >> variableAssignation [
	<generated>
	^ super variableAssignation withPositions
		==> [ :production | 
			PWBASTVariableAssignation new
				startPosition: production start;
				stopPosition: production stop;
				variable: (production content at: 1);
				assignation: (production content at: 2);
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> variableDeclarations [
	<generated>
	^ super variableDeclarations withPositions
		==> [ :production | 
			PWBASTVariableDeclarations new
				startPosition: production start;
				stopPosition: production stop;
				type: (production content at: 1);
				variableAssignations: (self rejectSeparators: (production content at: 3));
				yourself ]
]

{ #category : #rules }
MrlPWBParser >> withinClause [
	<generated>
	^ super withinClause withPositions
		==> [ :production | 
			PWBASTWithinClause new
				startPosition: production start;
				stopPosition: production stop;
				customType: (production content at: 3);
				yourself ]
]
