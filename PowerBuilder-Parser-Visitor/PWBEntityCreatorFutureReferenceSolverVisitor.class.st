"
I am a visitor that create entities when visiting the AST and use the future resolution mecanism to do only one pass on a system
"
Class {
	#name : #PWBEntityCreatorFutureReferenceSolverVisitor,
	#superclass : #PWBImporterAbstractVisitor,
	#instVars : [
		'currentLibrary',
		'typeDeclarationType',
		'expressionIsLeftHandSide',
		'multiple'
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
PWBEntityCreatorFutureReferenceSolverVisitor >> beMultiple [
	multiple := true
]

{ #category : #'entities creation' }
PWBEntityCreatorFutureReferenceSolverVisitor >> createAttributeAcces: aPWBASTExpressionAction [
	^ (self currentEntity class = FamixPWBDataWindow
		or: [ self currentEntity class = FamixPWBGraphicComponent ])
		ifFalse: [ | identifiers writeAccess |
			identifiers := self
				createResolvableIdentifier: aPWBASTExpressionAction.
			writeAccess := expressionIsLeftHandSide.
			identifiers
				foundAction: [ :identifier :currentEntity | 
					(identifier entity class inheritsFrom: FamixPWBmajorObject)
						ifFalse: [
							currentEntity addDependency: identifier entity.
							self flag: 'will need to deal with read/write accesses'
							"self
								createAccessFrom: currentEntity
								to: identifier representationString
								isWrite: writeAccess" ] ];
				notFoundReplacementEntity: [ :identifier :currentEntity |
					self
						ensureIR: PWBIRValueHolder
						named: identifier
						representationString owner: currentEntity ].
			self resolve: identifiers ]
		ifTrue: [ super visitPWBASTExpressionAction: aPWBASTExpressionAction ]
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
	multiple := false
]

{ #category : #accessing }
PWBEntityCreatorFutureReferenceSolverVisitor >> typeDeclarationType [
	typeDeclarationType
		ifNil: [ typeDeclarationType := OrderedDictionary new ].
	^ typeDeclarationType
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitAll: childrenNodes [
	^childrenNodes
		ifNotNil: [ childrenNodes collect: [ :aChildNode | self visit: aChildNode ] ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTAccess: aPWBASTAccess [
	| sRIdentifierWithNode |
	self visit: aPWBASTAccess arrayPosition.
	^ (self currentEntity class = FamixPWBDataWindow
		or: [ self currentEntity class = FamixPWBGraphicComponent ])
		ifFalse: [ | writeAccess |
			sRIdentifierWithNode := self visit: aPWBASTAccess accessed.
			writeAccess := expressionIsLeftHandSide.
			sRIdentifierWithNode
				foundAction: [ :identifier :currentEntity | 
					(sRIdentifierWithNode entity class inheritsFrom: FamixPWBmajorObject)
						ifFalse: [
							currentEntity addDependency: identifier entity.
							self flag: 'will need to deal with read/write accesses'.
							"self
								createAccessFrom: currentEntity
								to: sRIdentifierWithNode
								isWrite: writeAccess" ] ];
				notFoundReplacementEntity: [ :identifier :currentEntity | 
					self
						ensureIR: PWBIRValueHolder
						named: identifier representationString
						owner: currentEntity ].
			self resolve: sRIdentifierWithNode ]
		ifTrue: [ self visit: aPWBASTAccess accessed ]
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
	self
		ensureIRForFamixClass: FamixPWBBasicType named: aPWBASTBasicType basicType owner: nil.
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
		(SRTypeIdentifierWithNode
		identifier: (self visit: aPWBASTCustomType identifier)
		expectedKind:
			{FamixPWBCustomType.
			FamixPWBGlobalFunction.
			FamixPWBStructure.
			FamixPWBQuery.
			FamixPWBUserObject}
		node: aPWBASTCustomType identifier))
		foundAction: [ :identifier :currentEntity | 
			self flag: #TODOSourceAnchor.
			"self preprocessedFile: currentEntity sourceAnchor fileReference."
			currentEntity addDependency: identifier entity
			"(self create: FamixPWBReference from: identifier node)
				source: currentEntity;
				target: identifier entity" ];
		notFoundReplacementEntity: [ :identifier :currentEntity | 
			self
				ensureIRForFamixClass: FamixPWBCustomType
				named: (self visit: aPWBASTCustomType identifier)
				owner: currentEntity ].
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
	| argumentASTs |
	argumentASTs := aPWBASTMethodInvocation functionArguments.
	self
		resolve:
			((self
				resolvable:
				(SRInvocationWithNode
				identifier: (self visit: aPWBASTMethodInvocation uncheckedIdentifier)
				expectedKind:
					{FamixPWBFunction.
					FamixPWBEvent}
				node: aPWBASTMethodInvocation
				arguments: (self visit: aPWBASTMethodInvocation functionArguments)))
				notFoundReplacementEntity: [ :aResolvable | 
					{ self ensureIRForFamixClass: FamixPWBFunction named: aResolvable owner: nil
					"((self createStub: FamixPWBFunction)
						name: aResolvable identifier;
						yourself)"} ];
				foundAction: [ :identifier :currentEntity | 
					| invocation |
					self flag: #TODOSourceAnchor.
					"self preprocessedFile: currentEntity sourceAnchor fileReference."
					currentEntity addDependencies: identifier candidates.
					"invocation := (self
						createEntity: FamixPWBInvocation
						withAnchorFrom: identifier node)
						sender: currentEntity;
						candidates: identifier candidates."
					self flag: #TODOArgumentInFAST.
					"argumentASTs
						ifNotNil: [ argumentASTs functionArguments isEmptyOrNil
								ifFalse: [ argumentASTs functionArguments
										do: [ :argAST | 
											| famixPWBArgument |					
											famixPWBArgument := self
												create: FamixPWBArgument
												from: argAST.
											famixPWBArgument invocation: invocation ] ] ]" ])
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTElseIf: aPWBASTElseIf [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTElseIf: aPWBASTElseIf
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTEventDeclaration: aPWBASTEventDeclaration [
	self flag: 'missing visit to returnType'.
	self
		useCurrentEntity:
			(self
				ensureIRForFamixClass: FamixPWBEvent
				named: (self visit: aPWBASTEventDeclaration eventReferenceName)
				owner: self currentEntity)
		during: [
			self visit: aPWBASTEventDeclaration customCallStatement.
			self visit: aPWBASTEventDeclaration statements ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTEventInvocation: aPWBASTEventInvocation [
	| argumentASTs |
	argumentASTs := aPWBASTEventInvocation functionArguments.
	self
		resolve:
			((self
				resolvable:
				(SRInvocationWithNode
				identifier: (self visit: aPWBASTEventInvocation identifier)
				expectedKind: FamixPWBEvent
				node: aPWBASTEventInvocation))
				notFoundReplacementEntity: [ :aResolvable | 
					{ self ensureIRForFamixClass: FamixPWBEvent named: aResolvable identifier owner: nil
					"((self createStub: FamixPWBEvent)
						name: aResolvable identifier;
						yourself)"} ];
				foundAction: [ :identifier :currentEntity | 
					| invocation |
					self flag: #TODOSourceAnchor.
					"self preprocessedFile: currentEntity sourceAnchor fileReference."
					currentEntity addDependencies: identifier candidates.
					"invocation := (self
						createEntity: FamixPWBInvocation
						withAnchorFrom: identifier node)
						sender: currentEntity;
						candidates: identifier candidates."
					self flag: #TODOArgumentInFAST.
					"argumentASTs
						ifNotNil: [ argumentASTs functionArguments isEmptyOrNil
								ifFalse: [ argumentASTs functionArguments
										do: [ :argAST | 
											| famixPWBArgument |
											famixPWBArgument := self
												create: FamixPWBArgument
												from: argAST.
											famixPWBArgument invocation: invocation ] ] ]" ])
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTEventReferenceName: aPWBASTEventReferenceName [
	self flag: 'Manage object class correctly'.
	self visit: aPWBASTEventReferenceName objectClass.
	self currentEntity
		name: (self visit: aPWBASTEventReferenceName eventName).
	self visit: aPWBASTEventReferenceName arguments
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
		ifTrue: [ self createAttributeAcces: aPWBASTExpressionAction ]
		ifFalse: [ aPWBASTExpressionAction expressionAction
				ifNil: [ self visit: aPWBASTExpressionAction action ]
				ifNotNil: [ self visit: aPWBASTExpressionAction action.
					self visit: aPWBASTExpressionAction expressionAction ] ]
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
	majorEntity := self
		ensureIRForFamixClass: (self famixClassForFileExtension: aPWBASTFile fileExtension)
		named: aPWBASTFile fileName
		owner: self currentEntityIfAny.
	self flag: #TODOSourceAnchor.
	"self
		ensureIRForFamixClass: (self famixClassForFileExtension: aPWBASTFile fileExtension)
		named: aPWBASTFile fileName
		owner: self currentEntityIfAny."
	self flag: 'will need to deal with libraries'.
	"majorEntity library: currentLibrary"

	self
		useCurrentEntity: majorEntity
		during: [ super visitPWBASTFile: aPWBASTFile ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTForwardDeclaration: aPWBASTForwardDeclaration [
	multiple ifTrue: [
		^self auxiliaryVisitor: PWBTypeDeclarationVisitor visit: aPWBASTForwardDeclaration ].

	^super visitPWBASTForwardDeclaration: aPWBASTForwardDeclaration
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTFunctionArguments: aPWBASTFunctionArguments [
	super visitPWBASTFunctionArguments: aPWBASTFunctionArguments.
	^ SRArgumentsOnlyNumber
		numberOfArguments:
			(aPWBASTFunctionArguments functionArguments
				ifNil: [ 0 ]
				ifNotNil: [ :args | args size ])
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTFunctionDeclaration: aPWBASTFunctionDeclaration [
	self flag: 'why this "empty" scope ?'.
	self
		useCurrentEntity: PWBNullEntityObject new
		during: [ super visitPWBASTFunctionDeclaration: aPWBASTFunctionDeclaration ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTFunctionDefinition: aPWBASTFunctionDefinition [
	| famixFunction |
	famixFunction := self
		ensureIRForFamixClass: FamixPWBFunction
		named: (self visit: aPWBASTFunctionDefinition functionSignature identifier)
		owner: self currentEntity.
	self
		useCurrentEntity: famixFunction
		during: [
			self visit: aPWBASTFunctionDefinition functionSignature.
			self visit: aPWBASTFunctionDefinition statements ].
	^ self currentEntity
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTFunctionInvocation: aPWBASTFunctionInvocation [
	"| argumentASTs |
	argumentASTs := aPWBASTFunctionInvocation functionArguments."
	self
		resolve:
			((self
				resolvable:
				(SRInvocationWithNode
				identifier: (self visit: aPWBASTFunctionInvocation functionName)
				expectedKind: { FamixPWBSubRoutine . FamixPWBFunction }
				node: aPWBASTFunctionInvocation
				arguments: (self visit: aPWBASTFunctionInvocation functionArguments)))
				notFoundReplacementEntity: [ :aResolvable | 
					{ (self
						ensureIR: PWBIRFunction
						named: aResolvable identifier
						owner: nil)
						expectedFamixKinds: { FamixPWBSubRoutine . FamixPWBFunction } ;
						yourself
					"((self createStub: FamixPWBSubRoutine)
						name: aResolvable identifier;
						yourself)"} ];
				foundAction: [ :identifier :currentEntity | 
					| invocation |
					self flag: #TODOSourceAnchor.
					"self preprocessedFile: currentEntity sourceAnchor fileReference."
					currentEntity addDependencies: identifier candidates.
					"invocation := (self
						createEntity: FamixPWBInvocation
						withAnchorFrom: identifier node)
						sender: currentEntity;
						candidates: identifier candidates."
					self flag: #TODOArgumentInFAST.
					"argumentASTs
						ifNotNil: [ argumentASTs functionArguments isEmptyOrNil
								ifFalse: [ argumentASTs functionArguments
										do: [ :argAST | 
											| famixPWBArgument |
											famixPWBArgument := self
												create: FamixPWBArgument
												from: argAST.
											famixPWBArgument invocation: invocation ] ] ]."
					self flag: 'why returning invocation?'.
					"invocation" ]).
	self visit: aPWBASTFunctionInvocation defaultVariable
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTFunctionSignature: aPWBASTFunctionSignature [
	self visit: aPWBASTFunctionSignature accessModifier.

	self
		declaredType: (self
			auxiliaryVisitor: PWBTypeReferenceVisitor
			visit: aPWBASTFunctionSignature type)
		forIR: self currentEntity.

	self visit: aPWBASTFunctionSignature arguments.

	self flag: #TODOArgumentInFAST.
"	| signature arguments retunTypeHolder |
	self currentEntity isNullPatternObject
		ifTrue: [ ^ self ].
	arguments := aPWBASTFunctionSignature arguments arguments.
	arguments ifNotNil: [ self createPWBParameters: arguments ].
	signature := self
		createEntity: FamixPWBBehaviorSignature
		withAnchorFrom: aPWBASTFunctionSignature.
	signature
		name: self currentEntity name;
		behavioral: self currentEntity.
	""A signature always ends with a $; charater at definition""
	signature sourceAnchor endPos: signature sourceAnchor endPos + 1.
	retunTypeHolder := self visit: aPWBASTFunctionSignature type.
	retunTypeHolder isResolvable
		ifTrue: [ retunTypeHolder addTypedVariable: self currentEntity ].
	self currentEntity returnType: retunTypeHolder.
	self currentEntity
		name: (self visit: aPWBASTFunctionSignature identifier);
		accessModifier: (self visit: aPWBASTFunctionSignature accessModifier).
	^ signature
"
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTGlobalVariableDeclaration: aPWBASTGlobalVariableDeclaration [
	self visit: aPWBASTGlobalVariableDeclaration type.
	self
		ensureIRForFamixClass: FamixPWBGlobalVariable
		named: ((self visit: aPWBASTGlobalVariableDeclaration variable)
					representationString)
		owner:  self currentEntity

]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTGlobalVariables: aPWBASTGlobalVariables [
	(self visit: aPWBASTGlobalVariables attributes)
		ifNotNil: [ :attributeStrings | 
			attributeStrings flatten
				do: [ :attString | 
					self
						ensureIRForFamixClass: FamixPWBGlobalVariable
						named: attString
						owner:  self currentEntity ] ]
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
	^ self
		ensureIRForFamixClass: FamixPWBBasicType
		named: (anPWBASTParametrizedType parametrizedType
			copyWithRegex: '{.*}'
			matchesReplacedWith: '')
		owner: nil
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTRegularMethodInvocation: aPWBASTMethodInvocation [
	| toResolve |
	toResolve := (self
		resolvable:
		(SRInvocationWithNode
		identifier: (self visit: aPWBASTMethodInvocation uncheckedIdentifier)
		expectedKind:
			{FamixPWBFunction.
			FamixPWBEvent.
			FamixPWBSubRoutine}
		node: aPWBASTMethodInvocation
		arguments: (self visit: aPWBASTMethodInvocation functionArguments)))
		notFoundReplacementEntity: [ :aResolvable | 
			{
			self ensureIRForFamixClass: FamixPWBFunction named: aResolvable identifier owner: nil
			"((self createStub: FamixPWBFunction)
				name: aResolvable identifier;
				yourself)"} ];
		foundAction: [ :identifier :currentEntity | 
			self flag: #TODOSourceAnchor.
			"self preprocessedFile: currentEntity sourceAnchor fileReference."
			currentEntity addDependencies: identifier candidates
		].
	self resolve: toResolve.
	^ toResolve
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
	self
		useCurrentEntity: PWBNullEntityObject new
		during: [ super visitPWBASTSubroutineDeclaration: aPWBASTSubroutineDeclaration ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTSubroutineDefinition: aPWBASTSubroutineDefinition [
	self
		useCurrentEntity: (self
			ensureIRForFamixClass: FamixPWBSubRoutine
			named: (self visit: aPWBASTSubroutineDefinition subroutineSignature identifier)
			owner: self currentEntity)
		during: [ super visitPWBASTSubroutineDefinition: aPWBASTSubroutineDefinition ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTSubroutineSignature: aPWBASTSubroutineSignature [
	| arguments signature |
		self currentEntity isNullPatternObject
		ifTrue: [ ^ self ].
	arguments := aPWBASTSubroutineSignature arguments arguments.
	arguments ifNotNil: [ self createPWBParameters: arguments ].
	signature := self
		createEntity: FamixPWBBehaviorSignature
		withAnchorFrom: aPWBASTSubroutineSignature.
	signature
		name: self currentEntity name;
		behavioral: self currentEntity.
			"A signature always and with a $; charater at definition"
	signature sourceAnchor endPos: signature sourceAnchor endPos + 1.
	self currentEntity
		name: (self visit: aPWBASTSubroutineSignature identifier);
		accessModifier: (self visit: aPWBASTSubroutineSignature accessModifier).
	^ signature
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTThis: anPWBASTThis [
	^ self
		resolvable:
			(SRThisWithNode
				node: anPWBASTThis
				validationAsTypeBlock: [ :entity || majorObjectKinds |
					majorObjectKinds := self majorObjectFamixClasses.
					entity expectedFamixKinds anySatisfy: [ :kind | majorObjectKinds includes: kind ]
					"entity class inheritsFrom: FamixPWBmajorObject" ])
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTTriggerDefinition: aPWBASTTriggerDefinition [
	| trigger |
	trigger := self
		ensureIRForFamixClass: FamixPWBTrigger
		named: (self visit: aPWBASTTriggerDefinition eventType)
		owner: self currentEntity.
	self visit: aPWBASTTriggerDefinition identifier.
	self
		useCurrentEntity: trigger
		during: [ self visit: aPWBASTTriggerDefinition statements ]
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
	resolvable := SRIdentifierWithNode
		identifier: (self visit: aPWBASTVariable identifier)
		expectedKind:
			{FamixPWBVariable.
			FamixPWBAttribute.
			FamixPWBParameter.
			FamixPWBGlobalVariable.
			FamixPWBSharedVariable.
			FamixPWBInstanceVariable.
			FamixPWBLocalVariable}
		node: aPWBASTVariable identifier.
	resolvable arrayDefinition: arrayWithSize.
	^ self resolvable: resolvable
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTVariableAssignation: aPWBASTVariableAssignation [
	| variable |
	variable := (self visit: aPWBASTVariableAssignation variable)
		representationString.
	self visit: aPWBASTVariableAssignation assignation.
	^ self currentEntity isBehavioural
		ifTrue: [ self
						ensureIRForFamixClass: FamixPWBLocalVariable
						named: variable
						owner:  self currentEntity ]
		ifFalse: [ variable ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTVariableDeclarations: aPWBASTVariableDeclarations [
	| varNames vartype |
	varNames := self
		visitAll: aPWBASTVariableDeclarations variableAssignations.
	vartype := self visit: aPWBASTVariableDeclarations type.
	varNames
		do: [ :varName | self typeDeclarationType at: varName put: vartype ].
	^ varNames
]
