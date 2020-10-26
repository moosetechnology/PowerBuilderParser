"
I am a visitor that create entities when visiting the AST and use the future resolution mecanism to do only one pass on a system
"
Class {
	#name : #PWBEntityCreatorFutureReferenceSolverVisitor,
	#superclass : #PWBImporterAbstractVisitor,
	#instVars : [
		'currentLibrary',
		'typeDeclarationType',
		'visitedSigleLineIfStatement',
		'assignmentRHS'
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

{ #category : #'entities creation' }
PWBEntityCreatorFutureReferenceSolverVisitor >> createAttributeAcces: aPWBASTExpressionAction [
	(self currentEntity class = FamixPWBDataWindow
		or: [ self currentEntity class = FamixPWBGraphicComponent ])
		ifFalse: [ | identifiers writeAccess |
			identifiers := self createSRIdentifier: aPWBASTExpressionAction.
			writeAccess := assignmentRHS.
			identifiers
				foundAction: [ :identifier :currentEntity |
					(identifiers entity class inheritsFrom: FamixPWBmajorObject)
						ifFalse: [ currentEntity createAccessTo: identifiers entity writing: writeAccess ] ];
				notFoundReplacementEntity: [ :identifier :currentEntity | 
					currentEntity
						createStubValueHolderNamed: identifier representationString ].
			self resolve: identifiers ]

		ifTrue: [ super visitPWBASTExpressionAction: aPWBASTExpressionAction ]
]

{ #category : #'entities creation' }
PWBEntityCreatorFutureReferenceSolverVisitor >> createSRIdentifier: aPWBASTExpressionAction [
	^self
		resolvable:
			(SRIdentifierWithNode
				identifier: (self attributeAccessName: aPWBASTExpressionAction)
				expectedKind:
					{FamixPWBVariable.
					FamixPWBAttribute.
					FamixPWBParameter.
					FamixPWBGlobalVariable.
					FamixPWBSharedVariable.
					FamixPWBInstanceVariable.
					FamixPWBLocalVariable}
				node: aPWBASTExpressionAction)
]

{ #category : #accessing }
PWBEntityCreatorFutureReferenceSolverVisitor >> currentLibrary: aFamixPWBLibrary [
	currentLibrary := aFamixPWBLibrary
]

{ #category : #'entities creation' }
PWBEntityCreatorFutureReferenceSolverVisitor >> ensureEntityWithType: aType named: aName [
	^ (model entityStorage selectAllWithType: aType)
		detect: [ :entity | entity name = aName ]
		ifNone: [ aType new
				name: aName;
				mooseModel: model;
				yourself ]
]

{ #category : #'entities creation' }
PWBEntityCreatorFutureReferenceSolverVisitor >> initialize [
	super initialize.
	self initialiseFutureSolver.
	visitedSigleLineIfStatement := false.
	currentAttributeAccess := ''.
	assignmentRHS := false.
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> invocationStringFrom: aPWBASTFunctionInvocation [
	| defaultVariable functionName arguments |
	defaultVariable := self
		visit: aPWBASTFunctionInvocation defaultVariable.
	functionName := self visit: aPWBASTFunctionInvocation functionName.
	arguments := self visit: aPWBASTFunctionInvocation functionArguments
]

{ #category : #resolution }
PWBEntityCreatorFutureReferenceSolverVisitor >> resolveUnresolvedReferences [
	self solver resolveUnresolvedReferences
]

{ #category : #accessing }
PWBEntityCreatorFutureReferenceSolverVisitor >> typeDeclarationType [
	typeDeclarationType
		ifNil: [ typeDeclarationType := OrderedDictionary new ].
	^ typeDeclarationType
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitMrlPWBASTBasicType: anMrlPWBASTBasicType [
	^ self
		ensureEntityWithType: FamixPWBBasicType
		named: anMrlPWBASTBasicType basicType
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitMrlPWBASTCustomType: aMrlPWBASTCustomType [
	^ self
		ensureEntityWithType: FamixPWBCustomType
		named: (self visit: aMrlPWBASTCustomType identifier)
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitMrlPWBASTType: aMrlPWBASTType [
	^ self visit: aMrlPWBASTType type
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTAccess: aPWBASTAccess [
	self visit: aPWBASTAccess arrayPosition.
	(self currentEntity class = FamixPWBDataWindow
		or: [ self currentEntity class = FamixPWBGraphicComponent ])
		ifFalse: [ | identifiers writeAccess |
			identifiers := self visit: aPWBASTAccess accessed.
			writeAccess := assignmentRHS.
			identifiers
				foundAction: [ :identifier :currentEntity | 
					(identifiers entity class inheritsFrom: FamixPWBmajorObject)
						ifFalse: [ currentEntity
								createAccessTo: identifiers entity
								writing: writeAccess ] ];
				notFoundReplacementEntity: [ :identifier :currentEntity | 
					currentEntity
						createStubValueHolderNamed: identifier representationString ].
			self resolve: identifiers ]
		ifTrue: [ self visit: aPWBASTAccess accessed ].
	^ (self visit: aPWBASTAccess accessed) identifier
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTAccessOrType: aPWBASTAccessOrType [
	^ self visit: aPWBASTAccessOrType accessOrType
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTArgument: aPWBASTArgument [
	self visit: aPWBASTArgument argumentOption.
	self visit: aPWBASTArgument type.
	self visit: aPWBASTArgument arrayWithSize.
	^ self visit: aPWBASTArgument identifier
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTArguments: aPWBASTArguments [
	^ aPWBASTArguments arguments
		ifNil: [ nil ]
		ifNotNil: [ self visitAll: aPWBASTArguments arguments ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTAssignationStatement: aMrlPWBASTAssignationStatement [
	self visit: aMrlPWBASTAssignationStatement accessOrType.
	assignmentRHS := true.
	self visit: aMrlPWBASTAssignationStatement expressionAction.
	assignmentRHS := false.
	self visit: aMrlPWBASTAssignationStatement assignation.
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
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTBasicType: anPWBASTBasicType [
	^ self
		ensureEntityWithType: FamixPWBBasicType
		named: anPWBASTBasicType basicType
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTCase: aPWBASTCase [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTCase: aPWBASTCase
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTCustomType: aPWBASTCustomType [
	self
		resolve:
			((self
				resolvable:
				(SRIdentifierWithNode
				identifier: (self visit: aPWBASTCustomType identifier)
				expectedKind:
					{FamixPWBCustomType.
					FamixPWBGlobalFunction.
					FamixPWBStructure.
					FamixPWBQuery.
					FamixPWBUserObject}
				node: aPWBASTCustomType identifier))
				foundAction: [ :identifier :currentEntity | 
					self preprocessedFile: currentEntity sourceAnchor fileReference.
					(self create: FamixPWBReference from: identifier node)
						source: currentEntity;
						target: identifier entity ];
				notFoundReplacementEntity: [ :identifier :currentEntity | 
					self
						ensureEntityWithType: FamixPWBCustomType
						named: (self visit: aPWBASTCustomType identifier) ]).
	^ self
		ensureEntityWithType: FamixPWBCustomType
		named: (self visit: aPWBASTCustomType identifier)
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
					{((self createStub: FamixPWBFunction)
						name: aResolvable identifier;
						yourself)} ];
				foundAction: [ :identifier :currentEntity | 
					| invocation |
					self preprocessedFile: currentEntity sourceAnchor fileReference.
					invocation := (self
						createAssociation: FamixPWBInvocation
						from: identifier node)
						sender: currentEntity;
						candidates: identifier candidates.
					argumentASTs
						ifNotNil: [ argumentASTs functionArguments isEmptyOrNil
								ifFalse: [ argumentASTs functionArguments
										do: [ :argAST | 
											| famixPWBArgument |
											famixPWBArgument := self
												create: FamixPWBArgument
												from: argAST.
											famixPWBArgument invocation: invocation ] ] ] ])
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTElseIf: aPWBASTElseIf [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTElseIf: aPWBASTElseIf
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTEventDeclaration: aPWBASTEventDeclaration [
	self
		useCurrentEntity: (self create: FamixPWBEvent from: aPWBASTEventDeclaration)
		during: [ self visit: aPWBASTEventDeclaration eventReferenceName.
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
					{((self createStub: FamixPWBEvent)
						name: aResolvable identifier;
						yourself)} ];
				foundAction: [ :identifier :currentEntity | 
					| invocation |
					self preprocessedFile: currentEntity sourceAnchor fileReference.
					invocation := (self
						createAssociation: FamixPWBInvocation
						from: identifier node)
						sender: currentEntity;
						candidates: identifier candidates.
					argumentASTs
						ifNotNil: [ argumentASTs functionArguments isEmptyOrNil
								ifFalse: [ argumentASTs functionArguments
										do: [ :argAST | 
											| famixPWBArgument |
											famixPWBArgument := self
												create: FamixPWBArgument
												from: argAST.
											famixPWBArgument invocation: invocation ] ] ] ])
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTEventReferenceName: aPWBASTEventReferenceName [
	self flag: #TODO.	"Manage object class correctly"
	self visit: aPWBASTEventReferenceName objectClass.
	self currentEntity
		name: (self visit: aPWBASTEventReferenceName eventName).
	self visit: aPWBASTEventReferenceName arguments
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTEventTriggeringOrPosting: aPWBASTEventTriggeringOrPosting [
	| customIdentifier eventInvocation eventName |
	[ eventName := aPWBASTEventTriggeringOrPosting eventName toString ]
		on: Error
		do: [ ^ self ].
	customIdentifier := PWBASTIdentifier new
		identifier:
			((eventName copyReplaceAll: '"' with: '') copyReplaceAll: '!' with: '');
		yourself.
	eventInvocation := PWBASTEventInvocation new
		identifier: customIdentifier;
		startPosition: aPWBASTEventTriggeringOrPosting startPosition;
		stopPosition: aPWBASTEventTriggeringOrPosting stopPosition;
		yourself.
	self visitPWBASTEventInvocation: eventInvocation
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTExpression: aPWBASTExpression [
	self visit: aPWBASTExpression expressionAction.
	^ self visit: aPWBASTExpression expression
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTExpressionAction: aPWBASTExpressionAction [
	<generated>
	aPWBASTExpressionAction isAttributeAccess
		ifTrue: [ self createAttributeAcces: aPWBASTExpressionAction]
		ifFalse: [  super visitPWBASTExpressionAction: aPWBASTExpressionAction ]	

]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTExpressionTerm: aPWBASTExpressionTerm [
	^ self visit: aPWBASTExpressionTerm expressionTerm
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTExpressionWithSign: aPWBASTExpressionWithSign [
	^ self visit: aPWBASTExpressionWithSign expression
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTFile: aPWBASTFile [
	| majorEntity |
	majorEntity := self
		create: (self majorEntityClassForExtension: aPWBASTFile fileExtension)
		from: aPWBASTFile.
	majorEntity name: aPWBASTFile fileName.
	majorEntity library: currentLibrary.
	self
		useCurrentEntity: majorEntity
		during: [ super visitPWBASTFile: aPWBASTFile ]
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
	self
		useCurrentEntity: PWBNullEntityObject new
		during: [ super visitPWBASTFunctionDeclaration: aPWBASTFunctionDeclaration ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTFunctionDefinition: aPWBASTFunctionDefinition [
	| famixFunction |
	"self halt."
	famixFunction := self
		create: FamixPWBFunction
		from: aPWBASTFunctionDefinition.
	self
		useCurrentEntity: famixFunction
		during: [ super visitPWBASTFunctionDefinition: aPWBASTFunctionDefinition ].
	famixFunction returnType: functionRetunTypeHolder
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTFunctionInvocation: aPWBASTFunctionInvocation [
	| argumentASTs |
	argumentASTs := aPWBASTFunctionInvocation functionArguments.
	self
		resolve:
			((self
				resolvable:
				(SRInvocationWithNode
				identifier: (self visit: aPWBASTFunctionInvocation functionName)
				expectedKind:
					{FamixPWBSubRoutine.
					FamixPWBFunction}
				node: aPWBASTFunctionInvocation
				arguments: (self visit: argumentASTs)))
				notFoundReplacementEntity: [ :aResolvable | 
					{((self createStub: FamixPWBSubRoutine)
						name: aResolvable identifier;
						yourself)} ];
				foundAction: [ :identifier :currentEntity | 
					| invocation |
					self preprocessedFile: currentEntity sourceAnchor fileReference.
					invocation := (self
						createAssociation: FamixPWBInvocation
						from: identifier node)
						sender: currentEntity;
						candidates: identifier candidates.
					argumentASTs
						ifNotNil: [ argumentASTs functionArguments isEmptyOrNil
								ifFalse: [ argumentASTs functionArguments
										do: [ :argAST | 
											| famixPWBArgument |
											famixPWBArgument := self
												create: FamixPWBArgument
												from: argAST.
											famixPWBArgument invocation: invocation ] ] ] ]).
	self visit: aPWBASTFunctionInvocation defaultVariable
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTFunctionSignature: aPWBASTFunctionSignature [
	self visit: aPWBASTFunctionSignature accessModifier.
	functionRetunTypeHolder := self visit: aPWBASTFunctionSignature type.
	self currentEntity
		name: (self visit: aPWBASTFunctionSignature identifier).
	^ self visit: aPWBASTFunctionSignature arguments
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTGlobalVariableDeclaration: aPWBASTGlobalVariableDeclaration [
	self visit: aPWBASTGlobalVariableDeclaration type.
	self currentEntity
		createValueHolderNamed:
			(self visit: aPWBASTGlobalVariableDeclaration variable)
				representationString
		withType: FamixPWBGlobalVariable
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTGlobalVariables: aPWBASTGlobalVariables [
	(self visit: aPWBASTGlobalVariables attributes)
		ifNotNil: [ :attributeStrings | 
			attributeStrings flatten
				do: [ :attString | 
					self currentEntity
						createValueHolderNamed: attString
						withType: FamixPWBGlobalVariable ] ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTGraphicComponent: aPWBASTGraphicComponent [
	self
		useCurrentEntity: (self create: FamixPWBGraphicComponent from: aPWBASTGraphicComponent)
		during: [ super visitPWBASTGraphicComponent: aPWBASTGraphicComponent ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTIfMultiLine: aPWBASTIfMultiLine [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTIfMultiLine: aPWBASTIfMultiLine
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTIfSingleLine: aPWBASTIfSingleLine [
	self currentEntity increaseCyclomaticComplexity.
	visitedSigleLineIfStatement := true.
	^ super visitPWBASTIfSingleLine: aPWBASTIfSingleLine
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTParametrizedType: anPWBASTParametrizedType [
	^ self
		ensureEntityWithType: FamixPWBBasicType
		named:
			(anPWBASTParametrizedType parametrizedType
				copyWithRegex: '{.*}'
				matchesReplacedWith: '')
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTRegularMethodInvocation: aPWBASTMethodInvocation [
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
					{((self createStub: FamixPWBFunction)
						name: aResolvable identifier;
						yourself)} ];
				foundAction: [ :identifier :currentEntity | 
					self preprocessedFile: currentEntity sourceAnchor fileReference.
					(self createAssociation: FamixPWBInvocation from: identifier node)
						sender: currentEntity;
						candidates: identifier candidates ])
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTReturnStatement: aPWBASTReturnStatement [
	| return famixFunctionReturn |
	
	return := self visit: aPWBASTReturnStatement expression.
	return
		ifNotNil: [ famixFunctionReturn := self
				createAssociation: FamixPWBFunctionReturn
				from: aPWBASTReturnStatement.
			famixFunctionReturn
				behavioral: self currentEntity;
				type: functionRetunTypeHolder;
				name: self currentEntity name , '.Return'.
			(return = self
				or: [ aPWBASTReturnStatement expressionAction isNotNil ])
				ifTrue: [ famixFunctionReturn
						returnValue:
							(famixFunctionReturn sourceText asLowercase
								copyReplaceAll: 'return'
								with: '') trim ]
				ifFalse: [ famixFunctionReturn returnValue: return ].
			famixFunctionReturn
				doesBelongToSingleLineIfStatement: visitedSigleLineIfStatement.
			visitedSigleLineIfStatement := false ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTSharedVariables: aPWBASTSharedVariables [
	(self visit: aPWBASTSharedVariables attributes)
		ifNotNil: [ :attributeStrings | 
			attributeStrings flatten
				do: [ :attString | 
					self currentEntity
						createValueHolderNamed: attString
						withType: FamixPWBSharedVariable ] ]
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
		useCurrentEntity: (self create: FamixPWBSubRoutine from: aPWBASTSubroutineDefinition)
		during: [ super visitPWBASTSubroutineDefinition: aPWBASTSubroutineDefinition ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTSubroutineSignature: aPWBASTSubroutineSignature [
	<generated>
	self visit: aPWBASTSubroutineSignature accessModifier.
	self currentEntity
		name: (self visit: aPWBASTSubroutineSignature identifier).
	^ self visit: aPWBASTSubroutineSignature arguments
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTTriggerDefinition: aPWBASTTriggerDefinition [
	| trigger |
	trigger := self
		create: FamixPWBTrigger
		from: aPWBASTTriggerDefinition.
	trigger name: (self visit: aPWBASTTriggerDefinition eventType).
	self visit: aPWBASTTriggerDefinition identifier.
	self
		useCurrentEntity: trigger
		during: [ self visit: aPWBASTTriggerDefinition statements ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTTypeDeclaration: aPWBASTTypeDeclaration [
	self visit: aPWBASTTypeDeclaration type.
	self visit: aPWBASTTypeDeclaration fromClause.
	self visit: aPWBASTTypeDeclaration eventType.
	self visit: aPWBASTTypeDeclaration withinClause.
	self visit: aPWBASTTypeDeclaration descriptor.
	(self visit: aPWBASTTypeDeclaration attributes)
		ifNotNil: [ :attributeStrings | 
			attributeStrings flatten
				do: [ :attString | 
					| var |
					
					var := self currentEntity
						createValueHolderNamed: attString
						withType: FamixPWBInstanceVariable.
					var attributeType: (self typeDeclarationType at: attString) ] ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTTypeVariable: aPWBASTTypeVariable [
	(self visit: aPWBASTTypeVariable attributes)
		ifNotNil: [ :attributeStrings | 
			attributeStrings flatten
				do: [ :attString | 
					| var |
					
					var := self currentEntity
						createValueHolderNamed: attString
						withType: FamixPWBInstanceVariable.
					var attributeType: (self typeDeclarationType at: attString) ] ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTVariableAssignation: aPWBASTVariableAssignation [
	| variable |
	variable := (self visit: aPWBASTVariableAssignation variable)
		representationString.
	self visit: aPWBASTVariableAssignation assignation.
	^ self currentEntity isBehavioural
		ifTrue: [ self currentEntity
				createValueHolderNamed: variable
				withType: FamixPWBLocalVariable ]
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
