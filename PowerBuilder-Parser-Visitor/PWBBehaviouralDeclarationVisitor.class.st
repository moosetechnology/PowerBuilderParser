Class {
	#name : #PWBBehaviouralDeclarationVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#category : #'PowerBuilder-Parser-Visitor-visitors'
}

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
		during: [ | aux |
			aux := self auxiliaryVisitor: PWBStatementsVisitor.
			aux visit: aPWBASTEventDeclaration customCallStatement.
			aux visit: aPWBASTEventDeclaration statements ]
]

{ #category : #visiting }
PWBBehaviouralDeclarationVisitor >> visitPWBASTEventReferenceName: aPWBASTEventReferenceName [
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
			self auxiliaryVisitor: PWBStatementsVisitor visit: aPWBASTFunctionDefinition statements ].
	^ self currentEntity
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
		during: [
			self auxiliaryVisitor: PWBStatementsVisitor visit: aPWBASTSubroutineDefinition statements ]
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
PWBBehaviouralDeclarationVisitor >> visitPWBASTTriggerDefinition: aPWBASTTriggerDefinition [
	| trigger |
	trigger := self model
		ensureIRForFamixClass: FamixPWBTrigger
		named: (aPWBASTTriggerDefinition eventType eventType defaultEventType)
		owner: self currentEntity.
	
	self majorObject: aPWBASTTriggerDefinition identifier forIRTrigger: trigger.

	self
		useCurrentEntity: trigger
		during: [
			self auxiliaryVisitor: PWBStatementsVisitor visit: aPWBASTTriggerDefinition statements ]
]
