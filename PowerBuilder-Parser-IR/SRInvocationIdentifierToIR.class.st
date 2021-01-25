"
A specialization of SRInvocationWithNode for IRFunctions and IREvents

Similar to SRIdentifierToIR but for functions
"
Class {
	#name : #SRInvocationIdentifierToIR,
	#superclass : #SRInvocationWithNode,
	#instVars : [
		'chainedOwner'
	],
	#category : #'PowerBuilder-Parser-IR-symbolResolver'
}

{ #category : #accessing }
SRInvocationIdentifierToIR >> chainedOwner [
	^ chainedOwner
]

{ #category : #accessing }
SRInvocationIdentifierToIR >> chainedOwner: anObject [
	chainedOwner := anObject
]

{ #category : #hooks }
SRInvocationIdentifierToIR >> ifFoundCreateDependencyInModel: irModel [
	"Action block called by SymbolResolver when identifier to resolve is found
	 Default is to create a dependency from the currentEntity to the entity found"

	self flag: #TODOSourceAnchor.
	"for example: self preprocessedFile: currentEntity sourceAnchor fileReference."

	self flag: #TODOArgumentInFAST.
	"arguments were treated in 'Famix Visitors' but need to be treated with 'FAST Visitors'
	argumentASTs
						ifNotNil: [ argumentASTs functionArguments isEmptyOrNil
								ifFalse: [ argumentASTs functionArguments
										do: [ :argAST | 
											| famixPWBArgument |					
											famixPWBArgument := self
												create: FamixPWBArgument
												from: argAST.
											famixPWBArgument invocation: invocation ] ] ]"

	self foundAction: [ :me :currentEntity | 
		currentEntity addInvocationDependency: (self candidates) inModel: irModel ]
]

{ #category : #hooks }
SRInvocationIdentifierToIR >> ifNotFoundCreateFromChainInModel: irModel [
	"very similar to SRIdentifierToIR >> #ifNotFoundCreateFromChainInModel:,
	 but DependencyInvocation needs a collection of candidates, not a single entity"

	^self notFoundReplacementEntity: [ :me :currentEntity |
		{(irModel
			ensureIR: self mainIRKind
			named: self identifier
			owner: self chainedOwner)

			expectedFamixKinds: (self expectedKind) ;
			yourself} ]

]

{ #category : #hooks }
SRInvocationIdentifierToIR >> ifNotFoundCreateStubInModel: irModel [
	"Action block called by SymbolResolver if an identifier to resolve is not found
	 Default is to create a stub entity with the right kind"
	| famixKinds irKind |
	famixKinds := self expectedKind isCollection
		ifTrue: [ self expectedKind ]
		ifFalse: [ {self expectedKind} ].
	irKind := PWBIRNamedEntity irClassForFamixClass: famixKinds first.

	self notFoundReplacementEntity: [ :me :currentEntity |
		{ (irModel irStub: irKind named: self identifier)
				expectedFamixKinds: famixKinds ;
				yourself } ]
]

{ #category : #accessing }
SRInvocationIdentifierToIR >> mainFamixKind [
	^self expectedKind isCollection
		ifTrue: [ self expectedKind first ]
		ifFalse: [ self expectedKind ]
]

{ #category : #accessing }
SRInvocationIdentifierToIR >> mainIRKind [
	^PWBIRNamedEntity irClassForFamixClass: self mainFamixKind
]
