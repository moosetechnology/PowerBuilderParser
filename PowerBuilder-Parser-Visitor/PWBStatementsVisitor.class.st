Class {
	#name : #PWBStatementsVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#category : #'PowerBuilder-Parser-Visitor-visitors'
}

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTAccess: aPWBASTAccess [
	| sRIdentifierWithNode writeAccess |
	self
		flag: 'Quasi clone of PWBAttributeAccessVisitor>>createAttributeAcces:'.
	self visit: aPWBASTAccess arrayPosition.

	sRIdentifierWithNode := self visit: aPWBASTAccess accessed.
	self flag: #TODO . "writeAccess := expressionIsLeftHandSide."
	sRIdentifierWithNode foundAction
		ifNil: [ "Special variable THIS already has a foundAction"
			sRIdentifierWithNode
				ifNotFoundCreateStubInModel: self model ;
				ifFoundCreateDependencyInModel: self model
					when: [ :identifier :currentEntity |
						(identifier entity class inheritsFrom: FamixPWBmajorObject) not ] ].
	^self resolve: sRIdentifierWithNode
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTAssignationStatement: aPWBASTAssignationStatement [
	| accessOrType variable |
	accessOrType := self visit: aPWBASTAssignationStatement accessOrType.
	self flag: #TODO.	"expressionIsLeftHandSide := true."
	variable := self visit: aPWBASTAssignationStatement expressionAction.
	(variable isNotNil and: [ variable isResolvable ])
		ifTrue: [ variable previous: accessOrType ].
	"expressionIsLeftHandSide := false."
	self visit: aPWBASTAssignationStatement assignation
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTAttributeAccess: aPWBASTAttributeAccess [
	self visit: aPWBASTAttributeAccess arrayInformation.
	^ self visit: aPWBASTAttributeAccess uncheckedIdentifier
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTCallStatement: aPWBASTCallStatement [

	self resolve:
		((self visit: aPWBASTCallStatement variable)
			ifNotFoundCreateStubInModel: (self model) ;
			ifFoundCreateDependencyInModel: (self model) ;
			yourself).

	self visit: aPWBASTCallStatement identifier.

	^self visit:
		(self
			convertNode: aPWBASTCallStatement
			to: PWBASTEventInvocation
			withIdentifier: aPWBASTCallStatement eventType)
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTCase: aPWBASTCase [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTCase: aPWBASTCase
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTDefaultVariable: aPWBASTDefaultVariable [
	^self resolvable:
		(SRIdentifierToIR
			name: aPWBASTDefaultVariable defaultVariable
			expectedKind: { FamixPWBVariable }
			node: aPWBASTDefaultVariable)
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTDoLoopUntil: aPWBASTDoLoopUntil [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoLoopUntil: aPWBASTDoLoopUntil
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTDoLoopWhile: aPWBASTDoLoopWhile [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoLoopWhile: aPWBASTDoLoopWhile
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTDoUntilLoop: aPWBASTDoUntilLoop [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoUntilLoop: aPWBASTDoUntilLoop
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTDoWhileLoop: aPWBASTDoWhileLoop [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoWhileLoop: aPWBASTDoWhileLoop
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTDynamicMethodInvocation: aPWBASTMethodInvocation [
	aPWBASTMethodInvocation functionArguments.
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTMethodInvocation)
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTElseIf: aPWBASTElseIf [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTElseIf: aPWBASTElseIf
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTEventInvocation: aPWBASTEventInvocation [
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTEventInvocation)
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTEventReferenceName: aPWBASTEventReferenceName [
	self flag: 'still used?'.
	self shouldNotImplement.
	self flag: 'Manage object class correctly'.
	self visit: aPWBASTEventReferenceName objectClass.
	self visit: aPWBASTEventReferenceName arguments.
	^self model
		ensureIRForFamixClass: FamixPWBEvent
		named: (self visit: aPWBASTEventReferenceName eventName)
		owner: self currentEntity.
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTEventTriggeringOrPosting: aPWBASTEventTriggeringOrPosting [
	"converting it to an EventInvocation"
	| customIdentifier eventName |
	[ eventName := aPWBASTEventTriggeringOrPosting eventName toString ]
		on: Error
		do: [ ^ self ].
	customIdentifier := PWBASTIdentifier new
		identifier:
			((eventName copyReplaceAll: '"' with: '') copyReplaceAll: '!' with: '');
		yourself.

	^self visit:
		(self convertNode: aPWBASTEventTriggeringOrPosting to: PWBASTEventInvocation withIdentifier: customIdentifier)
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTExpressionAction: aPWBASTExpressionAction [
	^ aPWBASTExpressionAction isAttributeAccess
		ifTrue: [
			self resolve:
				(self auxiliaryVisitor: PWBAttributeAccessVisitor visit: aPWBASTExpressionAction) ]
		ifFalse: [
			aPWBASTExpressionAction expressionAction
			ifNil: [ self visit: aPWBASTExpressionAction action ]
			ifNotNil: [
				self visit: aPWBASTExpressionAction action.
				self visit: aPWBASTExpressionAction expressionAction
		] ]
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTFunctionInvocation: aPWBASTFunctionInvocation [
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTFunctionInvocation)
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTIfMultiLine: aPWBASTIfMultiLine [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTIfMultiLine: aPWBASTIfMultiLine
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTIfSingleLine: aPWBASTIfSingleLine [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTIfSingleLine: aPWBASTIfSingleLine
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTMethodInvocation: aPWBASTMethodInvocation [
	^ self visit: aPWBASTMethodInvocation methodInvocation
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTRegularMethodInvocation: aPWBASTRegularMethodInvocation [
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTRegularMethodInvocation)
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTReturnStatement: aPWBASTReturnStatement [
	self flag: #TODOArgumentInFAST.  "return statement should be treated in FAST".
	^super visitPWBASTReturnStatement: aPWBASTReturnStatement
"
	| famixFunctionReturn codeRewriteVisitor |
	famixFunctionReturn := self
		createEntity: FamixPWBFunctionReturn
		withAnchorFrom: aPWBASTReturnStatement.
	famixFunctionReturn
		behavioral: self currentEntity;
		type: self currentEntity returnType;
		name: self currentEntity name.
	self visit: aPWBASTReturnStatement expression.
	codeRewriteVisitor := PWBCodeRewriteVisitor new.
	codeRewriteVisitor visit: aPWBASTReturnStatement expression.
	famixFunctionReturn returnValue: codeRewriteVisitor stream.
	^ famixFunctionReturn
"
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTSpecialVariable: aPWBASTSpecialVariable [
	"overrides to return the result of visiting"
	^ self visit: aPWBASTSpecialVariable this
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTThis: aPWBASTThis [
	| resolvable thisVariable |
	thisVariable := self model
		irStub: PWBIRValueHolder
		named: 'this'.
	self currentEntity addAccessDependency: thisVariable inModel: self model.
	resolvable :=
		(SRThisWithNode
			node: aPWBASTThis
			validationBlock: [ :entity |
				entity expectedFamixKinds anySatisfy: [ :kind | self isMajorObjectKind: kind ] ]).

	resolvable
		foundAction: [ :identifier :currentEntity |
			thisVariable declaredType: identifier entity
		];
		notFoundReplacementEntity: [ :identifier :currentEntity | 
			self shouldNotImplement ].

	^self resolvable: resolvable

]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTVariable: aPWBASTVariable [
	| resolvable arrayWithSize |
	arrayWithSize := self visit: aPWBASTVariable arrayDefinition.
	resolvable := SRIdentifierToIR
		name: (self visit: aPWBASTVariable identifier)
		expectedKind: PWBIRValueHolder defaultFamixClasses
		node: aPWBASTVariable identifier.
	resolvable arrayDefinition: arrayWithSize.
	^ self resolvable: resolvable
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTVariableAssignation: aPWBASTVariableAssignation [
	| variable |
	self flag: #TODO.
	self shouldNotImplement.
	variable := (self visit: aPWBASTVariableAssignation variable)
		representationString.
	self visit: aPWBASTVariableAssignation assignation.
	^ self currentEntity isBehavioural
		ifTrue: [ self model
						ensureIRForFamixClass: FamixPWBLocalVariable
						named: variable
						owner: self currentEntity ]
		ifFalse: [ variable ]
]

{ #category : #visiting }
PWBStatementsVisitor >> visitPWBASTVariableDeclarations: aPWBASTVariableDeclarations [
	(self auxiliaryVisitor: PWBVariableDeclarationVisitor)
		defaultFamixClass: FamixPWBLocalVariable ;
		visit: aPWBASTVariableDeclarations
]
