Class {
	#name : #PWBDataWindowParser,
	#superclass : #PWBDataWindowGrammar,
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #rules }
PWBDataWindowParser >> access [
	<generated>
	^ super access ==> [ :production | PWBASTAccess new variable: (production at: 1); arrayPosition: (production ifNotNil: [(production at: 2)]); attributeAccesses: (production at: 3); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> accessOrType [
	<generated>
	^ super accessOrType ==> [ :production | PWBASTAccessOrType new accessOrType: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> argument [
	<generated>
	^ super argument ==> [ :production | PWBASTArgument new type: (production at: 2); identifier: (production at: 4); arrayWithSize: (production ifNotNil: [(production at: 5)]); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> arguments [
	<generated>
	^ super arguments ==> [ :production | PWBASTArguments new arguments: ((production at: 3) ifNotNil: [(self rejectSeparators: (production at: 3))]); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> array [
	<generated>
	^ super array ==> [ :production | PWBASTArray new expressions: (self rejectSeparators: (production at: 2)); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> arrayDesignation [
	<generated>
	^ super arrayDesignation flatten ==> [ :production | PWBASTArrayDesignation new arrayDesignation: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> arrayPosition [
	<generated>
	^ super arrayPosition ==> [ :production | PWBASTArrayPosition new expression: (production at: 2); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> arrayWithSize [
	<generated>
	^ super arrayWithSize ==> [ :production | PWBASTArrayWithSize new expressions: ((production at: 3) ifNotNil: [(self rejectSeparators: (production at: 3))]); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> assignation [
	<generated>
	^ super assignation ==> [ :production | PWBASTAssignation new expression: (production at: 4); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> assignationStatement [
	<generated>
	^ super assignationStatement ==> [ :production | PWBASTAssignationStatement new access: (production at: 1); assignation: (production at: 2); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> attributeAccess [
	<generated>
	^ super attributeAccess ==> [ :production | PWBASTAttributeAccess new uncheckedIdentifier: (production at: 2); arrayInformation: (production ifNotNil: [(production at: 4)]); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> basicType [
	<generated>
	^ super basicType flatten ==> [ :production | PWBASTBasicType new basicType: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> booleanValue [
	<generated>
	^ super booleanValue flatten ==> [ :production | PWBASTBooleanValue new booleanValue: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> callStatement [
	<generated>
	^ super callStatement ==> [ :production | PWBASTCallStatement new variable: (production at: 3); identifier: ((production at: 4) ifNotNil: [((production at: 4) at: 2)]); eventType: (production at: 6); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> column [
	<generated>
	^ super column ==> [ :production | PWBASTColumn new columnDefinition: (production at: 3); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> columnDefinition [
	<generated>
	^ super columnDefinition ==> [ :production | PWBASTColumnDefinition new options: (production at: 2); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> condition [
	<generated>
	^ super condition ==> [ :production | PWBASTCondition new expression: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> constant [
	<generated>
	^ super constant flatten ==> [ :production | PWBASTConstant new constant: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> createInstruction [
	<generated>
	^ super createInstruction ==> [ :production | PWBASTCreateInstruction new variable: (production at: 3); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> customType [
	<generated>
	^ super customType ==> [ :production | PWBASTCustomType new identifier: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> dataWindow [
	<generated>
	^ super dataWindow ==> [ :production | PWBASTDataWindow new parameters: (production at: 2); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> dataWindowFile [
	<generated>
	^ super dataWindowFile ==> [ :production | PWBASTDataWindowFile new fileStatements: (self rejectSeparators: (production at: 1)); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> defaultEventType [
	<generated>
	^ super defaultEventType flatten ==> [ :production | PWBASTDefaultEventType new defaultEventType: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> defaultVariable [
	<generated>
	^ super defaultVariable flatten ==> [ :production | PWBASTDefaultVariable new defaultVariable: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> else [
	<generated>
	^ super else ==> [ :production | PWBASTElse new statements: (production ifNotNil: [(production at: 3)]); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> elseIf [
	<generated>
	^ super elseIf ==> [ :production | PWBASTElseIf new expression: (production at: 3); statements: (production ifNotNil: [(production at: 7)]); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> elseOnLine [
	<generated>
	^ super elseOnLine ==> [ :production | PWBASTElseOnLine new statement: (production at: 4); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> eventType [
	<generated>
	^ super eventType ==> [ :production | PWBASTEventType new eventType: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> exitStatement [
	<generated>
	^ super exitStatement flatten ==> [ :production | PWBASTExitStatement new exitStatement: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> export [
	<generated>
	^ super export ==> [ :production | PWBASTExport new formatType: (production at: 2); parameters: (production at: 3); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> expression [
	<generated>
	^ super expression ==> [ :production | PWBASTExpression new expression: (production at: 1); methodInvocations: (production at: 2); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> expressionTerm [
	<generated>
	^ super expressionTerm ==> [ :production | PWBASTExpressionTerm new expressionTerm: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> expressionWithSign [
	<generated>
	^ super expressionWithSign ==> [ :production | PWBASTExpressionWithSign new expression: (production at: 3); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> file [
	<generated>
	^ super file ==> [ :production | PWBASTFile new content: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> formatType [
	<generated>
	^ super formatType flatten ==> [ :production | PWBASTFormatType new formatType: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> functionArgument [
	<generated>
	^ super functionArgument ==> [ :production | PWBASTFunctionArgument new expression: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> functionArguments [
	<generated>
	^ super functionArguments ==> [ :production | PWBASTFunctionArguments new functionArguments: ((production at: 3) ifNotNil: [(self rejectSeparators: (production at: 3))]); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> functionInvocation [
	<generated>
	^ super functionInvocation ==> [ :production | PWBASTFunctionInvocation new defaultVariable: ((production at: 1) ifNotNil: [((production at: 1) at: 1)]); functionName: (production at: 2); functionArguments: (production at: 4); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> generator [
	<generated>
	^ super generator ==> [ :production | PWBASTGenerator new generatorToken: (production at: 1); parameters: (production at: 2); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> generatorToken [
	<generated>
	^ super generatorToken flatten ==> [ :production | PWBASTGeneratorToken new generatorToken: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> graphicComponent [
	<generated>
	^ super graphicComponent ==> [ :production | PWBASTGraphicComponent new graphicComponentToken: (production at: 1); parameters: (production at: 2); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> graphicComponentToken [
	<generated>
	^ super graphicComponentToken flatten ==> [ :production | PWBASTGraphicComponentToken new graphicComponentToken: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> identifier [
	<generated>
	^ super identifier flatten ==> [ :production | PWBASTIdentifier new identifier: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> ifMultiLine [
	<generated>
	^ super ifMultiLine ==> [ :production | PWBASTIfMultiLine new condition: (production at: 3); statements: (production ifNotNil: [(production at: 7)]); elseIfs: ((production at: 8) collect: [:subProduction | subProduction at: 2]); else: ((production at: 9) ifNotNil: [((production at: 9) at: 2)]); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> ifSingleLine [
	<generated>
	^ super ifSingleLine ==> [ :production | PWBASTIfSingleLine new condition: (production at: 3); statement: (production at: 7); elseOnLine: (production ifNotNil: [(production at: 8)]); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> ifStatement [
	<generated>
	^ super ifStatement ==> [ :production | PWBASTIfStatement new ifStatement: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> import [
	<generated>
	^ super import ==> [ :production | PWBASTImport new formatType: (production at: 2); parameters: (production at: 3); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> methodInvocation [
	<generated>
	^ super methodInvocation ==> [ :production | PWBASTMethodInvocation new uncheckedIdentifier: (production at: 4); functionArguments: (production at: 6); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> notExpression [
	<generated>
	^ super notExpression ==> [ :production | PWBASTNotExpression new expression: (production at: 3); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> number [
	<generated>
	^ super number flatten ==> [ :production | PWBASTNumber new number: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> operatorExpression [
	<generated>
	^ super operatorExpression ==> [ :production | PWBASTOperatorExpression new left: (production at: 1); methodInvocations: (production at: 2); right: (production at: 6); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> option [
	<generated>
	^ super option ==> [ :production | PWBASTOption new access: (production at: 1); optionValue: (production at: 3); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> optionValue [
	<generated>
	^ super optionValue ==> [ :production | PWBASTOptionValue new expression: (production at: 1); graphicIndex: ((production at: 2) ifNotNil: [((production at: 2) at: 2)]); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> options [
	<generated>
	^ super options ==> [ :production | PWBASTOptions new options: (self rejectSeparators: production); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> parameters [
	<generated>
	^ super parameters ==> [ :production | PWBASTParameters new options: (production ifNotNil: [(production at: 2)]); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> parametrizedType [
	<generated>
	^ super parametrizedType flatten ==> [ :production | PWBASTParametrizedType new parametrizedType: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> parenthesedExpression [
	<generated>
	^ super parenthesedExpression ==> [ :production | PWBASTParenthesedExpression new expression: (production at: 3); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> postFixOperator [
	<generated>
	^ super postFixOperator ==> [ :production | PWBASTPostFixOperator new access: (production at: 1); yourself ]
]

{ #category : #helpers }
PWBDataWindowParser >> rejectSeparators: anArray [
	<generated>
	^ anArray withIndexSelect: [:anElement :anIndex | anIndex odd]
]

{ #category : #rules }
PWBDataWindowParser >> returnStatement [
	<generated>
	^ super returnStatement ==> [ :production | PWBASTReturnStatement new expression: ((production at: 2) ifNotNil: [((production at: 2) at: 2)]); yourself ]
]

{ #category : #helpers }
PWBDataWindowParser >> selectSeparators: anArray [
	<generated>
	^ anArray withIndexSelect: [:anElement :anIndex | anIndex even]
]

{ #category : #rules }
PWBDataWindowParser >> specialStatement [
	<generated>
	^ super specialStatement ==> [ :production | PWBASTSpecialStatement new specialStatement: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> statement [
	<generated>
	^ super statement ==> [ :production | PWBASTStatement new statement: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> statements [
	<generated>
	^ super statements ==> [ :production | PWBASTStatements new statements: (self rejectSeparators: production); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> string [
	<generated>
	^ super string flatten ==> [ :production | PWBASTString new string: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> table [
	<generated>
	^ super table ==> [ :production | PWBASTTable new columns: (self rejectSeparators: (production at: 3)); options: (production ifNotNil: [(production at: 5)]); yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> this [
	<generated>
	^ super this flatten ==> [ :production | PWBASTThis new this: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> type [
	<generated>
	^ super type ==> [ :production | PWBASTType new type: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> uncheckedIdentifier [
	<generated>
	^ super uncheckedIdentifier flatten ==> [ :production | PWBASTUncheckedIdentifier new uncheckedIdentifier: production; yourself ]
]

{ #category : #rules }
PWBDataWindowParser >> variable [
	<generated>
	^ super variable ==> [ :production | PWBASTVariable new this: (production ifNotNil: [(production at: 1)]); identifier: (production at: 2); arrayWithSize: (production ifNotNil: [(production at: 4)]); yourself ]
]
