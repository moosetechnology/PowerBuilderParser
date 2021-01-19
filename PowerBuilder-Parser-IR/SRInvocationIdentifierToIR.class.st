Class {
	#name : #SRInvocationIdentifierToIR,
	#superclass : #SRInvocationWithNode,
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #hooks }
SRInvocationIdentifierToIR >> defaultNotFoundReplacementBlockInModel: model [
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
