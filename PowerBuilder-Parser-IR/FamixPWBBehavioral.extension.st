Extension { #name : #FamixPWBBehavioral }

{ #category : #'*PowerBuilder-Parser-IR' }
FamixPWBBehavioral >> addDependencyToIR: anIREntity [
	anIREntity toFamix: self mooseModel dependingBehavioural: self
]

{ #category : #'*PowerBuilder-Parser-IR' }
FamixPWBBehavioral >> addMemberIR: anIREntity [
	(anIREntity toFamix: (self mooseModel))
		behavioral: self
]
