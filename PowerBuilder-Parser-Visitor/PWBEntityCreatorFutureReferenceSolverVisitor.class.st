"
I am a visitor that create entities when visiting the AST and use the future resolution mecanism to do only one pass on a system
"
Class {
	#name : #PWBEntityCreatorFutureReferenceSolverVisitor,
	#superclass : #PWBImporterAbstractVisitor,
	#instVars : [
		'currentLibrary'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

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
	self initialiseFutureSolver
]

{ #category : #resolution }
PWBEntityCreatorFutureReferenceSolverVisitor >> resolveUnresolvedReferences [
	self solver resolveUnresolvedReferences
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTAccess: aPWBASTAccess [
	self visit: aPWBASTAccess arrayPosition.
	(self currentEntity class = FamixPWBDataWindow
		or: [ self currentEntity class = FamixPWBGraphicComponent ])
		ifFalse: [ | identifiers |
			identifiers := self visit: aPWBASTAccess accessed.
			identifiers
				foundAction: [ :identifier :currentEntity | 
					(identifiers entity class inheritsFrom: FamixPWBmajorObject)
						ifFalse: [ currentEntity createAccessTo: identifiers entity writing: false ] ];
				notFoundReplacementEntity: [ :identifier :currentEntity | 
					currentEntity
						createStubValueHolderNamed: identifier representationString ].
			self resolve: identifiers ]
		ifTrue: [ self visit: aPWBASTAccess accessed ]
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
			((SRIdentifierWithNode
				identifier: (self visit: aPWBASTCustomType identifier)
				expectedKind:
				{FamixPWBCustomType.
			FamixPWBUserObject}
				node: aPWBASTCustomType identifier)
				foundAction: [ :identifier :currentEntity | 
					(self create: FamixPWBReference from: identifier node)
						source: currentEntity;
						target: identifier entity ];
				notFoundReplacementEntity: [ :identifier :currentEntity | 
					self
						ensureEntityWithType: FamixPWBCustomType
						named: (self visit: aPWBASTCustomType identifier) ])
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
	self
		resolve:
			((SRInvocationWithNode
				identifier: (self visit: aPWBASTMethodInvocation uncheckedIdentifier)
				node: aPWBASTMethodInvocation
				expectedKind:
				{FamixPWBFunction.
					FamixPWBEvent}
				arguments: (self visit: aPWBASTMethodInvocation functionArguments))
				notFoundReplacementEntity: [ :aResolvable | 
					{((self createStub: FamixPWBFunction)
						name: aResolvable identifier;
						yourself)} ];
				foundAction: [ :identifier :currentEntity | 
					(self createAssociation: FamixPWBInvocation from: identifier node)
						sender: currentEntity;
						candidates: identifier candidates ])
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
	self
		resolve:
			((SRInvocationWithNode
				identifier: (self visit: aPWBASTEventInvocation identifier)
				expectedKind: FamixPWBEvent
				node: aPWBASTEventInvocation)
				notFoundReplacementEntity: [ :aResolvable | 
					{((self createStub: FamixPWBEvent)
						name: aResolvable identifier;
						yourself)} ];
				foundAction: [ :identifier :currentEntity | 
					(self createAssociation: FamixPWBInvocation from: identifier node)
						sender: currentEntity;
						candidates: identifier candidates ])
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
	self
		useCurrentEntity: (self create: FamixPWBFunction from: aPWBASTFunctionDefinition)
		during: [ super visitPWBASTFunctionDefinition: aPWBASTFunctionDefinition ]
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTFunctionInvocation: aPWBASTFunctionInvocation [
	self
		resolve:
			((SRInvocationWithNode
				identifier: (self visit: aPWBASTFunctionInvocation functionName)
				node: aPWBASTFunctionInvocation
				expectedKind: FamixPWBSubRoutine
				arguments: (self visit: aPWBASTFunctionInvocation functionArguments))
				notFoundReplacementEntity: [ :aResolvable | 
					{((self createStub: FamixPWBSubRoutine)
						name: aResolvable identifier;
						yourself)} ];
				foundAction: [ :identifier :currentEntity | 
					(self createAssociation: FamixPWBInvocation from: identifier node)
						sender: currentEntity;
						candidates: identifier candidates ]).
	self visit: aPWBASTFunctionInvocation defaultVariable
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTFunctionSignature: aPWBASTFunctionSignature [
	self visit: aPWBASTFunctionSignature accessModifier.
	self visit: aPWBASTFunctionSignature type.
	self currentEntity
		name: (self visit: aPWBASTFunctionSignature identifier).
	self visit: aPWBASTFunctionSignature arguments
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
	^ super visitPWBASTIfSingleLine: aPWBASTIfSingleLine
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTRegularMethodInvocation: aPWBASTMethodInvocation [
	self
		resolve:
			((SRInvocationWithNode
				identifier: (self visit: aPWBASTMethodInvocation uncheckedIdentifier)
				node: aPWBASTMethodInvocation
				expectedKind:
				{FamixPWBFunction.
					FamixPWBEvent}
				arguments: (self visit: aPWBASTMethodInvocation functionArguments))
				notFoundReplacementEntity: [ :aResolvable | 
					{((self createStub: FamixPWBFunction)
						name: aResolvable identifier;
						yourself)} ];
				foundAction: [ :identifier :currentEntity | 
					(self createAssociation: FamixPWBInvocation from: identifier node)
						sender: currentEntity;
						candidates: identifier candidates ])
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
	self visit: aPWBASTSubroutineSignature arguments
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
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTVariableAssignation: aPWBASTVariableAssignation [
	self currentEntity
		createValueHolderNamed:
			(self visit: aPWBASTVariableAssignation variable) representationString.
	self visit: aPWBASTVariableAssignation assignation
]

{ #category : #visiting }
PWBEntityCreatorFutureReferenceSolverVisitor >> visitPWBASTVariableDeclarations: aPWBASTVariableDeclarations [
	<generated>
	self flag: #TODO. "set type for declared variables"
	self visit: aPWBASTVariableDeclarations type.
	self visitAll: aPWBASTVariableDeclarations variableAssignations.
]
