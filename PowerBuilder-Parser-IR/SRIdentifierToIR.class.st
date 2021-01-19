Class {
	#name : #SRIdentifierToIR,
	#superclass : #SRIdentifierWithNode,
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #hooks }
SRIdentifierToIR >> defaultNotFoundReplacementBlockInModel: model [
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
