"
I am a visitor that create entities when visiting the AST and use the future resolution mecanism to do only one pass on a system
"
Class {
	#name : #PWBEntityCreatorFutureReferenceSolverVisitor,
	#superclass : #PWBImporterAbstractVisitor,
	#instVars : [
		'currentLibrary',
		'expressionIsLeftHandSide'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #'entities creation' }
PWBEntityCreatorFutureReferenceSolverVisitor >> attributeAccessName: aPWBASTExpressionAction [
	| name |
	name := (self visit: aPWBASTExpressionAction action).
	aPWBASTExpressionAction expressionAction
		ifNotNil: [ :subExprAction |
			subExprAction isAttributeAccess
				ifTrue: [ name := name , '.' , (self attributeAccessName: subExprAction ) ] ].
	^name
]

{ #category : #accessing }
PWBEntityCreatorFutureReferenceSolverVisitor >> currentLibrary: aFamixPWBLibrary [
	currentLibrary := aFamixPWBLibrary
]

{ #category : #'entities creation' }
PWBEntityCreatorFutureReferenceSolverVisitor >> initialize [
	super initialize.
	self initialiseFutureSolver.
	expressionIsLeftHandSide := false.
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitAll: childrenNodes [
	^childrenNodes
		ifNotNil: [ childrenNodes collect: [ :aChildNode | self visit: aChildNode ] ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTAccess: aPWBASTAccess [
	self
		flag: 'Quasi clone of PWBAttributeAccessVisitor>>createAttributeAcces:'.
	self visit: aPWBASTAccess arrayPosition.
	^ (self currentEntity class = FamixPWBDataWindow
		or: [ self currentEntity class = FamixPWBGraphicComponent ])
		ifTrue: [ self visit: aPWBASTAccess accessed ]
		ifFalse: [ | sRIdentifierWithNode writeAccess |
			sRIdentifierWithNode := self visit: aPWBASTAccess accessed.
			writeAccess := expressionIsLeftHandSide.
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
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTAccessOrType: aPWBASTAccessOrType [
	^ self visit: aPWBASTAccessOrType accessOrType
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTArguments: aPWBASTArguments [
	^self auxiliaryVisitor: PWBVariableDeclarationVisitor visit: aPWBASTArguments
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTArrayWithSize: aPWBASTArrayWithSize [
	^ self visitAll: aPWBASTArrayWithSize expressions
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTAssignationStatement: aPWBASTAssignationStatement [
	| accessOrType variable |
	accessOrType := self visit: aPWBASTAssignationStatement accessOrType.
	expressionIsLeftHandSide := true.
	variable := self visit: aPWBASTAssignationStatement expressionAction.
	(variable isNotNil and: [ variable isResolvable ])
		ifTrue: [ variable previous: accessOrType ].
	expressionIsLeftHandSide := false.
	self visit: aPWBASTAssignationStatement assignation
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTAttribute: aPWBASTAttribute [
	self visit: aPWBASTAttribute accessModifier.
	self visit: aPWBASTAttribute descriptor.
	^ self visit: aPWBASTAttribute variableDeclarations
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTAttributeAccess: aPWBASTAttributeAccess [
	self visit: aPWBASTAttributeAccess arrayInformation.
	^ self visit: aPWBASTAttributeAccess uncheckedIdentifier
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTAttributes: aPWBASTAttributes [
	self
		visitAll:
			(aPWBASTAttributes attributes
				select: [ :att | att class = PWBASTAccessModifierDefiner ]).
	self
		visitAll:
			(aPWBASTAttributes attributes
				select: [ :att | att class = PWBASTEventAttribute ]).
	^ self
		visitAll:
			(aPWBASTAttributes attributes
				select: [ :att | att class = PWBASTAttribute ])
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTBasicType: aPWBASTBasicType [
	"ensures the basicType as a top level entity
	+ translates the ASTBasicType into an ASTIdentifier
	the Famix entity will be recovered by the symbolResolver from the ASTIdentifier"
	self model
		irStubForFamixClass: FamixPWBBasicType named: aPWBASTBasicType basicType.
	^PWBASTIdentifier new
		startPosition: aPWBASTBasicType startPosition ;
		stopPosition: aPWBASTBasicType stopPosition ;
		identifier: aPWBASTBasicType basicType ;
		yourself
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTCase: aPWBASTCase [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTCase: aPWBASTCase
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTCustomType: aPWBASTCustomType [
	| typeToResolve |
	typeToResolve := (self
		resolvable:
		(SRIdentifierToIR
		name: (self visit: aPWBASTCustomType identifier)
		expectedKind:
			{FamixPWBCustomType.
			FamixPWBGlobalFunction.
			FamixPWBStructure.
			FamixPWBQuery.
			FamixPWBUserObject}
		node: aPWBASTCustomType identifier))
		ifFoundCreateDependencyInModel: self model;
		ifNotFoundCreateStubInModel: self model.
	^ self resolve: typeToResolve
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTDoLoopUntil: aPWBASTDoLoopUntil [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoLoopUntil: aPWBASTDoLoopUntil
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTDoLoopWhile: aPWBASTDoLoopWhile [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoLoopWhile: aPWBASTDoLoopWhile
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTDoUntilLoop: aPWBASTDoUntilLoop [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoUntilLoop: aPWBASTDoUntilLoop
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTDoWhileLoop: aPWBASTDoWhileLoop [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoWhileLoop: aPWBASTDoWhileLoop
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTDynamicMethodInvocation: aPWBASTMethodInvocation [
	aPWBASTMethodInvocation functionArguments.
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTMethodInvocation)
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTElseIf: aPWBASTElseIf [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTElseIf: aPWBASTElseIf
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTEventDeclaration: aPWBASTEventDeclaration [
	self auxiliaryVisitor: PWBBehaviouralDeclarationVisitor visit: aPWBASTEventDeclaration
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTEventInvocation: aPWBASTEventInvocation [
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTEventInvocation)
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTEventReferenceName: aPWBASTEventReferenceName [
	self flag: 'Manage object class correctly'.
	self visit: aPWBASTEventReferenceName objectClass.
	self visit: aPWBASTEventReferenceName arguments.
	^self model
		ensureIRForFamixClass: FamixPWBEvent
		named: (self visit: aPWBASTEventReferenceName eventName)
		owner: self currentEntity.
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTEventTriggeringOrPosting: aPWBASTEventTriggeringOrPosting [
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
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTEventType: aPWBASTEventType [
	^ self visit: aPWBASTEventType eventType
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTExpression: aPWBASTExpression [
	self visit: aPWBASTExpression expressionAction.
	^ self visit: aPWBASTExpression expression
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTExpressionAction: aPWBASTExpressionAction [
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
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTExpressionTerm: aPWBASTExpressionTerm [
	^ self visit: aPWBASTExpressionTerm expressionTerm
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTExpressionWithSign: aPWBASTExpressionWithSign [
	self visit: aPWBASTExpressionWithSign expressionSign.
	^ self visit: aPWBASTExpressionWithSign expression
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTFile: aPWBASTFile [
	| majorEntity |
	majorEntity := self model
		ensureIRForFamixClass: (self famixClassForFileExtension: aPWBASTFile fileExtension)
		named: aPWBASTFile fileName
		owner: self currentEntityIfAny.
	self flag: #TODOSourceAnchor.
	"self
		create: (self majorEntityClassForExtension: aPWBASTFile fileExtension)
		from: aPWBASTFile."
	self flag: 'will need to deal with libraries'.
	"majorEntity library: currentLibrary"

	self
		useCurrentEntity: majorEntity
		during: [ super visitPWBASTFile: aPWBASTFile ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTForwardDeclaration: aPWBASTForwardDeclaration [
	^self auxiliaryVisitor: PWBTypeDeclarationVisitor visit: aPWBASTForwardDeclaration
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTFunctionArguments: aPWBASTFunctionArguments [
	self flag: #TODO.
	self shouldNotImplement.

	super visitPWBASTFunctionArguments: aPWBASTFunctionArguments.
	^ SRArgumentsOnlyNumber
		numberOfArguments:
			(aPWBASTFunctionArguments functionArguments
				ifNil: [ 0 ]
				ifNotNil: [ :args | args size ])
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTFunctionDeclaration: aPWBASTFunctionDeclaration [
	self auxiliaryVisitor: PWBBehaviouralDeclarationVisitor visit: aPWBASTFunctionDeclaration
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTFunctionDefinition: aPWBASTFunctionDefinition [
	self auxiliaryVisitor: PWBBehaviouralDeclarationVisitor visit: aPWBASTFunctionDefinition
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTFunctionInvocation: aPWBASTFunctionInvocation [
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTFunctionInvocation)
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTFunctionSignature: aPWBASTFunctionSignature [
	| irFunction |
	"self visit: aPWBASTFunctionSignature accessModifier."

	irFunction := self model
		ensureIRForFamixClass: FamixPWBFunction
		named: (self visit: aPWBASTFunctionSignature identifier)
		owner: self currentEntity.
	self
		declaredType: (self
			auxiliaryVisitor: PWBTypeReferenceVisitor
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
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTGlobalVariableDeclaration: aPWBASTGlobalVariableDeclaration [
self shouldNotImplement .
self flag: #TODO.  "remove"
	self visit: aPWBASTGlobalVariableDeclaration type.
	self model
		ensureIRForFamixClass: FamixPWBGlobalVariable
		named: ((self visit: aPWBASTGlobalVariableDeclaration variable)
					representationString)
		owner: self currentEntity

]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTGlobalVariables: aPWBASTGlobalVariables [
	self auxiliaryVisitor: PWBVariableDeclarationVisitor visit: aPWBASTGlobalVariables
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTGraphicComponent: aPWBASTGraphicComponent [
	self flag: 'will need to decide what to do with these'.
	"self
		useCurrentEntity: (self create: FamixPWBGraphicComponent from: aPWBASTGraphicComponent)
		during: [ super visitPWBASTGraphicComponent: aPWBASTGraphicComponent ]"
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTIfMultiLine: aPWBASTIfMultiLine [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTIfMultiLine: aPWBASTIfMultiLine
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTIfSingleLine: aPWBASTIfSingleLine [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTIfSingleLine: aPWBASTIfSingleLine
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTMethodInvocation: aPWBASTMethodInvocation [
	^ self visit: aPWBASTMethodInvocation methodInvocation
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTParametrizedType: anPWBASTParametrizedType [
	self flag: 'not sure what a parameterized type is?'.
	^self model
		irStubForFamixClass: FamixPWBBasicType
		named: (anPWBASTParametrizedType parametrizedType
			copyWithRegex: '{.*}'
			matchesReplacedWith: '')

]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTRegularMethodInvocation: aPWBASTRegularMethodInvocation [
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTRegularMethodInvocation)
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTReturnStatement: aPWBASTReturnStatement [
	self flag: 'Don t do anything, return statement should be treated in FAST'.
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
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTSharedVariables: aPWBASTSharedVariables [
	"definition of shared instance variables of a UserObject,
	PWBTypeDeclarationVisitor can handle that"
	^self auxiliaryVisitor: PWBVariableDeclarationVisitor visit: aPWBASTSharedVariables
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTSpecialVariable: aPWBASTSpecialVariable [
	^ self visit: aPWBASTSpecialVariable this
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTStatement: aPWBASTStatement [
	^ self visit: aPWBASTStatement statement
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTSubroutineDeclaration: aPWBASTSubroutineDeclaration [
	self auxiliaryVisitor: PWBBehaviouralDeclarationVisitor visit: aPWBASTSubroutineDeclaration
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTSubroutineDefinition: aPWBASTSubroutineDefinition [
	self auxiliaryVisitor: PWBBehaviouralDeclarationVisitor visit: aPWBASTSubroutineDefinition
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTSubroutineSignature: aPWBASTSubroutineSignature [
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
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTThis: aPWBASTThis [
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
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTTriggerDefinition: aPWBASTTriggerDefinition [
	self auxiliaryVisitor: PWBBehaviouralDeclarationVisitor visit: aPWBASTTriggerDefinition
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTType: aPWBASTType [
	^ self visit: aPWBASTType type
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTTypeDeclaration: aPWBASTTypeDeclaration [
	^self auxiliaryVisitor: PWBTypeDeclarationVisitor visit: aPWBASTTypeDeclaration

]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTTypeVariable: aPWBASTTypeVariable [
	^self auxiliaryVisitor: PWBVariableDeclarationVisitor visit: aPWBASTTypeVariable
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTVariable: aPWBASTVariable [
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
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTVariableAssignation: aPWBASTVariableAssignation [
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
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTVariableDeclarations: aPWBASTVariableDeclarations [
	self auxiliaryVisitor: PWBVariableDeclarationVisitor visit: aPWBASTVariableDeclarations
]
