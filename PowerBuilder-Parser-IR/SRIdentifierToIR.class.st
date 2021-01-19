Class {
	#name : #SRIdentifierToIR,
	#superclass : #SRIdentifierWithNode,
	#category : #'PowerBuilder-Parser-IR'
}

{ #category : #'as yet unclassified' }
SRIdentifierToIR >> defaultNotFoundReplacementBlockInModel: model [
	| irKind |
	irKind := PWBIRNamedEntity irClassForFamixClass:
		(expectedKind isCollection
			ifTrue: [ expectedKind first ]
			ifFalse: [expectedKind]).

	self notFoundReplacementEntity: [ :me :currentEntity |
		model irStub: irKind named: self identifier ]
]
