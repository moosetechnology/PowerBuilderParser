Class {
	#name : #PWBVisitorReferenceCreator,
	#superclass : #PWBImporterAbstractVisitor,
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #scope }
PWBVisitorReferenceCreator >> visitPWBASTAccess: aPWBASTAccess [
	| identifiers |
	self visit: aPWBASTAccess arrayPosition.
	self visitAll: aPWBASTAccess attributeAccesses.
	identifiers := self visit: aPWBASTAccess variable.
	identifiers
		foundAction:
				[ :identifier :currentEntity | currentEntity createAccessTo: identifiers entity writing: false ];
		notFoundReplacementEntity: [ :identifier :currentEntity | 
			currentEntity
				createStubValueHolderNamed: identifier representationString ].
	self resolve: identifiers
]

{ #category : #scope }
PWBVisitorReferenceCreator >> visitPWBASTDynamicMethodInvocation: aPWBASTMethodInvocation [
	| methodName |
	methodName := self visit: aPWBASTMethodInvocation uncheckedIdentifier.
	
	model allMethods
		entityNamed: methodName
		ifAbsent: [ FamixPWBFunction new
				name: methodName;
				mooseModel: model;
				yourself ].
	self visit: aPWBASTMethodInvocation functionArguments
]

{ #category : #scope }
PWBVisitorReferenceCreator >> visitPWBASTEventDeclaration: aPWBASTEventDeclaration [
	self
		useCurrentEntity: (self visit: aPWBASTEventDeclaration eventReferenceName)
		during: [ self visit: aPWBASTEventDeclaration customCallStatement.
			self visit: aPWBASTEventDeclaration statements ]
]

{ #category : #scope }
PWBVisitorReferenceCreator >> visitPWBASTEventReferenceName: aPWBASTEventReferenceName [
	^ self
		useEntityNamed: (self visit: aPWBASTEventReferenceName eventName)
		ofType: FamixPWBEvent
		during: [ self visit: aPWBASTEventReferenceName objectClass.
			self visit: aPWBASTEventReferenceName arguments ]
]

{ #category : #scope }
PWBVisitorReferenceCreator >> visitPWBASTFile: aPWBASTFile [
	self
		useCurrentEntity:
			((self model
				allWithType: (self majorEntityClassForExtension: aPWBASTFile fileExtension))
				entityNamed: aPWBASTFile fileName)
		during: [ super visitPWBASTFile: aPWBASTFile ]
]

{ #category : #scope }
PWBVisitorReferenceCreator >> visitPWBASTFunctionArguments: aPWBASTFunctionArguments [
	super visitPWBASTFunctionArguments: aPWBASTFunctionArguments.
	^ SRArgumentsOnlyNumber
		numberOfArguments:
			(aPWBASTFunctionArguments functionArguments
				ifNil: [ 0 ]
				ifNotNil: [ :args | args size ])
]

{ #category : #scope }
PWBVisitorReferenceCreator >> visitPWBASTFunctionDefinition: aPWBASTFunctionDefinition [
	self
		useCurrentEntity: (self visit: aPWBASTFunctionDefinition functionSignature)
		during: [ self visit: aPWBASTFunctionDefinition statements ]
]

{ #category : #scope }
PWBVisitorReferenceCreator >> visitPWBASTFunctionSignature: aPWBASTFunctionSignature [
	self visit: aPWBASTFunctionSignature accessModifier.
	self visit: aPWBASTFunctionSignature type.
	self visit: aPWBASTFunctionSignature arguments.
	^ (self model allWithType: FamixPWBFunction)
		entityNamed: (self visit: aPWBASTFunctionSignature identifier)
]

{ #category : #scope }
PWBVisitorReferenceCreator >> visitPWBASTRegularMethodInvocation: aPWBASTMethodInvocation [
	self
		resolve:
			((SRInvocationWithNode
				identifier: (self visit: aPWBASTMethodInvocation uncheckedIdentifier)
				node: aPWBASTMethodInvocation
				expectedKind: FamixPWBFunction
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

{ #category : #scope }
PWBVisitorReferenceCreator >> visitPWBASTSubroutineDefinition: aPWBASTSubroutineDefinition [
	self
		useCurrentEntity: (self visit: aPWBASTSubroutineDefinition subroutineSignature)
		during: [ self visit: aPWBASTSubroutineDefinition statements ]
]

{ #category : #scope }
PWBVisitorReferenceCreator >> visitPWBASTSubroutineSignature: aPWBASTSubroutineSignature [
	self visit: aPWBASTSubroutineSignature accessModifier.
	self visit: aPWBASTSubroutineSignature arguments.
	^ (self model allWithType: FamixPWBSubRoutine)
		entityNamed: (self visit: aPWBASTSubroutineSignature identifier)
]

{ #category : #scope }
PWBVisitorReferenceCreator >> visitPWBASTTriggerDefinition: aPWBASTTriggerDefinition [
	self
		useEntityNamed: (self visit: aPWBASTTriggerDefinition eventType)
		ofType: FamixPWBTrigger
		during: [ self visit: aPWBASTTriggerDefinition identifier.
			self visit: aPWBASTTriggerDefinition statements ]
]
