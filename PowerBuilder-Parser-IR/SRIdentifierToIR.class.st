Class {
	#name : #SRIdentifierToIR,
	#superclass : #SRIdentifierWithNode,
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #hooks }
SRIdentifierToIR >> ifFoundCreateDependency [
	"Action block called by SymbolResolver when identifier to resolve is found
	 Default is to create a dependency from the currentEntity to the entity found"

	self flag: #TODOSourceAnchor.
	"for example: self preprocessedFile: currentEntity sourceAnchor fileReference."

	self flag: #TODO.   "'will need to deal with read/write accesses'"

	self foundAction: [ :me :currentEntity | 
			currentEntity addDependency: self entity ]
]

{ #category : #hooks }
SRIdentifierToIR >> ifFoundCreateDependencyWhen: aConditionalBlock [
	"Action block called by SymbolResolver when identifier to resolve is found
	 Default is to create a dependency from the currentEntity to the entity found
	 IF the conditionalBlock evals to true.
	 conditionalBlock takes 2 parameters: myself and currentEntity when resolving"

	self flag: #TODOSourceAnchor.
	"for example: self preprocessedFile: currentEntity sourceAnchor fileReference."

	self flag: #TODO.   "'will need to deal with read/write accesses'"

	self foundAction: [ :me :currentEntity |
			(aConditionalBlock value: me value: currentEntity)
			ifTrue: [ currentEntity addDependency: self entity ] ]
]

{ #category : #hooks }
SRIdentifierToIR >> ifNotFoundCreateStubInModel: model [
	"Action block called by SymbolResolver if an identifier to resolve is not found
	 Default is to create a stub entity with the right kind"
	| irKind |
	irKind := PWBIRNamedEntity irClassForFamixClass:
		(self expectedKind isCollection
			ifTrue: [ self expectedKind first ]
			ifFalse: [ self expectedKind ]).

	self notFoundReplacementEntity: [ :me :currentEntity |
		(model irStub: irKind named: self identifier)
			expectedFamixKinds: (self expectedKind) ;
			yourself ]
]
