Class {
	#name : #SRInvocationIdentifierToIR,
	#superclass : #SRInvocationWithNode,
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #hooks }
SRInvocationIdentifierToIR >> ifFoundCreateDependency [
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
			currentEntity addDependency: self candidates ]
]

{ #category : #hooks }
SRInvocationIdentifierToIR >> ifNotFoundCreateStubInModel: model [
	"Action block called by SymbolResolver if an identifier to resolve is not found
	 Default is to create a stub entity with the right kind"
	| famixKinds irKind |
	famixKinds := self expectedKind isCollection
		ifTrue: [ self expectedKind ]
		ifFalse: [ {self expectedKind} ].
	irKind := PWBIRNamedEntity irClassForFamixClass: famixKinds first.

	self notFoundReplacementEntity: [ :me :currentEntity |
		{ (model irStub: irKind named: self identifier)
				expectedFamixKinds: famixKinds ;
				yourself } ]
]
