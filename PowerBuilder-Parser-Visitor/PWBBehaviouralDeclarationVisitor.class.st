Class {
	#name : #PWBBehaviouralDeclarationVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTAccess: aPWBASTAccess [
	self
		flag: 'Quasi clone of PWBAttributeAccessVisitor>>createAttributeAcces:'.
	self visit: aPWBASTAccess arrayPosition.
	^ (self currentEntity class = FamixPWBDataWindow
		or: [ self currentEntity class = FamixPWBGraphicComponent ])
		ifTrue: [ self visit: aPWBASTAccess accessed ]
		ifFalse: [ | sRIdentifierWithNode writeAccess |
			sRIdentifierWithNode := self visit: aPWBASTAccess accessed.
			self flag: #TODO . "writeAccess := expressionIsLeftHandSide."
			sRIdentifierWithNode foundAction
				ifNil: [ "Special variable THIS already has a foundAction"
					sRIdentifierWithNode
						ifNotFoundCreateStubInModel: self model;
						ifFoundCreateDependencyInModel: self model
						when: [ :identifier :currentEntity |
							(identifier entity class inheritsFrom: FamixPWBmajorObject) not ] ].
			self resolve: sRIdentifierWithNode ]
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTAssignationStatement: aPWBASTAssignationStatement [
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
PWBBehaviouralDeclarationVisitor >> visitPWBASTAttributeAccess: aPWBASTAttributeAccess [
	self visit: aPWBASTAttributeAccess arrayInformation.
	^ self visit: aPWBASTAttributeAccess uncheckedIdentifier
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTCase: aPWBASTCase [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTCase: aPWBASTCase
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTDoLoopUntil: aPWBASTDoLoopUntil [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoLoopUntil: aPWBASTDoLoopUntil
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTDoLoopWhile: aPWBASTDoLoopWhile [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoLoopWhile: aPWBASTDoLoopWhile
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTDoUntilLoop: aPWBASTDoUntilLoop [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoUntilLoop: aPWBASTDoUntilLoop
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTDoWhileLoop: aPWBASTDoWhileLoop [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoWhileLoop: aPWBASTDoWhileLoop
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTDynamicMethodInvocation: aPWBASTMethodInvocation [
	aPWBASTMethodInvocation functionArguments.
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTMethodInvocation)
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTElseIf: aPWBASTElseIf [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTElseIf: aPWBASTElseIf
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTEventDeclaration: aPWBASTEventDeclaration [
	| irEntity |
	irEntity := self visit: aPWBASTEventDeclaration eventReferenceName.

	aPWBASTEventDeclaration returnType
	ifNotNil: [
		self
			declaredType: (self
				auxiliaryVisitor: PWBTypeReferenceToIdentifierVisitor
				visit: aPWBASTEventDeclaration returnType)
			forIR: irEntity].

	self
		useCurrentEntity: irEntity
		during: [
			self visit: aPWBASTEventDeclaration customCallStatement.
			self visit: aPWBASTEventDeclaration statements ]
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTEventInvocation: aPWBASTEventInvocation [
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTEventInvocation)
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTEventReferenceName: aPWBASTEventReferenceName [
	self flag: 'Manage object class correctly'.
	self visit: aPWBASTEventReferenceName objectClass.
	self visit: aPWBASTEventReferenceName arguments.
	^self model
		ensureIRForFamixClass: FamixPWBEvent
		named: (self visit: aPWBASTEventReferenceName eventName)
		owner: self currentEntity.
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTEventTriggeringOrPosting: aPWBASTEventTriggeringOrPosting [
	"converting it to a PWBASTEventInvocation"
	| customIdentifier eventName |
	[ eventName := aPWBASTEventTriggeringOrPosting eventName toString ]
		on: Error
		do: [ ^ self ].
	customIdentifier := PWBASTIdentifier new
		identifier:
			((eventName copyReplaceAll: '"' with: '') copyReplaceAll: '!' with: '');
		yourself.

	^self visitPWBASTEventInvocation:
		(PWBASTEventInvocation new
			identifier: customIdentifier;
			startPosition: aPWBASTEventTriggeringOrPosting startPosition;
			stopPosition: aPWBASTEventTriggeringOrPosting stopPosition;
			yourself)
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTExpressionAction: aPWBASTExpressionAction [
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
PWBBehaviouralDeclarationVisitor >> visitPWBASTFunctionArguments: aPWBASTFunctionArguments [
	super visitPWBASTFunctionArguments: aPWBASTFunctionArguments.
	^ SRArgumentsOnlyNumber
		numberOfArguments:
			(aPWBASTFunctionArguments functionArguments
				ifNil: [ 0 ]
				ifNotNil: [ :args | args size ])
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTFunctionDeclaration: aPWBASTFunctionDeclaration [
	self flag: 'why this "empty" scope ?'.
	self
		useCurrentEntity: PWBNullEntityObject new
		during: [ super visitPWBASTFunctionDeclaration: aPWBASTFunctionDeclaration ]
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTFunctionDefinition: aPWBASTFunctionDefinition [
	| irFct |
	irFct := self visit: aPWBASTFunctionDefinition functionSignature.	
	irFct setSourceAnchorFrom: aPWBASTFunctionDefinition file: self file.

	self
		useCurrentEntity: irFct
		during: [
			self visit: aPWBASTFunctionDefinition statements ].
	^ self currentEntity
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTFunctionInvocation: aPWBASTFunctionInvocation [
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTFunctionInvocation)
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTFunctionSignature: aPWBASTFunctionSignature [
	| irFunction |
	"self visit: aPWBASTFunctionSignature accessModifier."

	irFunction := self model
		ensureIRForFamixClass: FamixPWBFunction
		named: (self visit: aPWBASTFunctionSignature identifier)
		owner: self currentEntity.
	irFunction setSourceAnchorFrom: aPWBASTFunctionSignature file: self file.

	self
		declaredType: (self
			auxiliaryVisitor: PWBTypeReferenceToIdentifierVisitor
			visit: aPWBASTFunctionSignature type)
		forIR: irFunction.

	self
		useCurrentEntity: irFunction
		during: [ self
			auxiliaryVisitor: PWBVariableDeclarationVisitor
			visit: aPWBASTFunctionSignature arguments].

	^irFunction
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTIfMultiLine: aPWBASTIfMultiLine [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTIfMultiLine: aPWBASTIfMultiLine
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTIfSingleLine: aPWBASTIfSingleLine [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTIfSingleLine: aPWBASTIfSingleLine
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTMethodInvocation: aPWBASTMethodInvocation [
	^ self visit: aPWBASTMethodInvocation methodInvocation
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTRegularMethodInvocation: aPWBASTRegularMethodInvocation [
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTRegularMethodInvocation)
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTReturnStatement: aPWBASTReturnStatement [
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
PWBBehaviouralDeclarationVisitor >> visitPWBASTSpecialVariable: aPWBASTSpecialVariable [
	"overrides to return the result of visiting"
	^ self visit: aPWBASTSpecialVariable this
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTSubroutineDeclaration: aPWBASTSubroutineDeclaration [
	self
		useCurrentEntity: PWBNullEntityObject new
		during: [ super visitPWBASTSubroutineDeclaration: aPWBASTSubroutineDeclaration ]
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTSubroutineDefinition: aPWBASTSubroutineDefinition [
	self
		useCurrentEntity: (self model
			ensureIRForFamixClass: FamixPWBSubRoutine
			named: (self visit: aPWBASTSubroutineDefinition subroutineSignature identifier)
			owner: self currentEntity)
		during: [ super visitPWBASTSubroutineDefinition: aPWBASTSubroutineDefinition ]
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTSubroutineSignature: aPWBASTSubroutineSignature [
	super visitPWBASTSubroutineSignature: aPWBASTSubroutineSignature.

	self flag: #TODOArgumentInFAST.
	"| arguments signature |
	arguments := aPWBASTSubroutineSignature arguments arguments.
	arguments ifNotNil: [ self createPWBParameters: arguments ].
	signature := model
		createEntity: FamixPWBBehaviorSignature
		withAnchorFrom: aPWBASTSubroutineSignature.
	signature
		name: self currentEntity name;
		behavioral: self currentEntity.
			""A signature always and with a $; charater at definition""
	signature sourceAnchor endPos: signature sourceAnchor endPos + 1.
	self currentEntity
		name: (self visit: aPWBASTSubroutineSignature identifier);
		accessModifier: (self visit: aPWBASTSubroutineSignature accessModifier).
	^ signature"
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTThis: aPWBASTThis [
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
PWBBehaviouralDeclarationVisitor >> visitPWBASTTriggerDefinition: aPWBASTTriggerDefinition [
	| trigger resolvable |
	trigger := self model
		ensureIRForFamixClass: FamixPWBTrigger
		named: (aPWBASTTriggerDefinition eventType eventType defaultEventType)
		owner: self currentEntity.
	
	self eventType: aPWBASTTriggerDefinition identifier forIRTrigger: trigger.

	self
		useCurrentEntity: trigger
		during: [ self visit: aPWBASTTriggerDefinition statements ]
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTVariable: aPWBASTVariable [
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
PWBBehaviouralDeclarationVisitor >> visitPWBASTVariableAssignation: aPWBASTVariableAssignation [
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
PWBBehaviouralDeclarationVisitor >> visitPWBASTVariableDeclarations: aPWBASTVariableDeclarations [
	(self auxiliaryVisitor: PWBVariableDeclarationVisitor)
		defaultFamixClass: FamixPWBLocalVariable ;
		visit: aPWBASTVariableDeclarations
]
