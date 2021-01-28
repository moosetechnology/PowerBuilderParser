"
I am a visitor that create entities when visiting the AST and use the future resolution mecanism to do only one pass on a system
"
Class {
	#name : #PWBCompilationUnitVisitor,
	#superclass : #PWBImporterAbstractVisitor,
	#instVars : [
		'currentLibrary',
		'expressionIsLeftHandSide'
	],
	#category : #'PowerBuilder-Parser-Visitor-visitors'
}

{ #category : #'entities creation' }
PWBCompilationUnitVisitor >> attributeAccessName: aPWBASTExpressionAction [
	| name |
	name := (self visit: aPWBASTExpressionAction action).
	aPWBASTExpressionAction expressionAction
		ifNotNil: [ :subExprAction |
			subExprAction isAttributeAccess
				ifTrue: [ name := name , '.' , (self attributeAccessName: subExprAction ) ] ].
	^name
]

{ #category : #accessing }
PWBCompilationUnitVisitor >> currentLibrary: aFamixPWBLibrary [
	currentLibrary := aFamixPWBLibrary
]

{ #category : #'entities creation' }
PWBCompilationUnitVisitor >> initialize [
	super initialize.
	self initialiseFutureSolver.
	expressionIsLeftHandSide := false.
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitAll: childrenNodes [
	^childrenNodes
		ifNotNil: [ childrenNodes collect: [ :aChildNode | self visit: aChildNode ] ]
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTAccess: aPWBASTAccess [
	(self file extension = 'srd')
	ifFalse: [ self shouldNotImplement ]
	ifTrue: [ "ignore" ]
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTAccessOrType: aPWBASTAccessOrType [
self flag: #TODO.
self shouldNotImplement.

	^ self visit: aPWBASTAccessOrType accessOrType
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTArrayWithSize: aPWBASTArrayWithSize [
self flag: #TODO.
self shouldNotImplement.

	^ self visitAll: aPWBASTArrayWithSize expressions
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTAssignationStatement: aPWBASTAssignationStatement [
	(self file extension = 'srd')
	ifFalse: [ self shouldNotImplement ]
	ifTrue: [ "ignore" ]
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTEventDeclaration: aPWBASTEventDeclaration [
	self auxiliaryVisitor: PWBBehaviouralDeclarationVisitor visit: aPWBASTEventDeclaration
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTExpression: aPWBASTExpression [
	(self file extension = 'srd')
	ifFalse: [ self shouldNotImplement ]
	ifTrue: [ "ignore" ]
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTExpressionAction: aPWBASTExpressionAction [
self flag: #TODO.
self shouldNotImplement.

	^ aPWBASTExpressionAction isAttributeAccess
		ifTrue: [
			self resolve:
				(self auxiliaryVisitor: PWBExpressionsVisitor visit: aPWBASTExpressionAction) ]
		ifFalse: [
			aPWBASTExpressionAction expressionAction
			ifNil: [ self visit: aPWBASTExpressionAction action ]
			ifNotNil: [
				self visit: aPWBASTExpressionAction action.
				self visit: aPWBASTExpressionAction expressionAction
		] ]
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTExpressionTerm: aPWBASTExpressionTerm [
self flag: #TODO.
self shouldNotImplement.

	^ self visit: aPWBASTExpressionTerm expressionTerm
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTExpressionWithSign: aPWBASTExpressionWithSign [
self flag: #TODO.
self shouldNotImplement.

	self visit: aPWBASTExpressionWithSign expressionSign.
	^ self visit: aPWBASTExpressionWithSign expression
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTFile: aPWBASTFile [
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
PWBCompilationUnitVisitor >> visitPWBASTForwardDeclaration: aPWBASTForwardDeclaration [
	^self auxiliaryVisitor: PWBTypeDeclarationVisitor visit: aPWBASTForwardDeclaration
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTFunctionDeclaration: aPWBASTFunctionDeclaration [
	self auxiliaryVisitor: PWBBehaviouralDeclarationVisitor visit: aPWBASTFunctionDeclaration
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTFunctionDefinition: aPWBASTFunctionDefinition [
	self auxiliaryVisitor: PWBBehaviouralDeclarationVisitor visit: aPWBASTFunctionDefinition
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTFunctionInvocation: aPWBASTFunctionInvocation [
	(self file extension = 'srd')
	ifFalse: [ self shouldNotImplement ]
	ifTrue: [ "ignore" ]
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTGlobalVariableDeclaration: aPWBASTGlobalVariableDeclaration [
	self auxiliaryVisitor: PWBVariableDeclarationVisitor visit: aPWBASTGlobalVariableDeclaration

]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTGlobalVariables: aPWBASTGlobalVariables [
	self auxiliaryVisitor: PWBVariableDeclarationVisitor visit: aPWBASTGlobalVariables
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTGraphicComponent: aPWBASTGraphicComponent [
	self flag: 'will need to decide what to do with these'.
	"self
		useCurrentEntity: (self create: FamixPWBGraphicComponent from: aPWBASTGraphicComponent)
		during: [ super visitPWBASTGraphicComponent: aPWBASTGraphicComponent ]"
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTParametrizedType: anPWBASTParametrizedType [
self flag: #TODO.
self shouldNotImplement.

	self flag: 'not sure what a parameterized type is?'.
	^self model
		irStubForFamixClass: FamixPWBBasicType
		named: (anPWBASTParametrizedType parametrizedType
			copyWithRegex: '{.*}'
			matchesReplacedWith: '')

]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTSharedVariables: aPWBASTSharedVariables [
	"definition of shared instance variables of a UserObject,
	PWBTypeDeclarationVisitor can handle that"
	^self auxiliaryVisitor: PWBVariableDeclarationVisitor visit: aPWBASTSharedVariables
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTSubroutineDeclaration: aPWBASTSubroutineDeclaration [
	self auxiliaryVisitor: PWBBehaviouralDeclarationVisitor visit: aPWBASTSubroutineDeclaration
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTSubroutineDefinition: aPWBASTSubroutineDefinition [
	self auxiliaryVisitor: PWBBehaviouralDeclarationVisitor visit: aPWBASTSubroutineDefinition
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTTriggerDefinition: aPWBASTTriggerDefinition [
	self auxiliaryVisitor: PWBBehaviouralDeclarationVisitor visit: aPWBASTTriggerDefinition
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTTypeDeclaration: aPWBASTTypeDeclaration [
	^self auxiliaryVisitor: PWBTypeDeclarationVisitor visit: aPWBASTTypeDeclaration

]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTTypeVariable: aPWBASTTypeVariable [
	^self auxiliaryVisitor: PWBVariableDeclarationVisitor visit: aPWBASTTypeVariable
]

{ #category : #visiting }
PWBCompilationUnitVisitor >> visitPWBASTVariableDeclarations: aPWBASTVariableDeclarations [
	self auxiliaryVisitor: PWBVariableDeclarationVisitor visit: aPWBASTVariableDeclarations
]
