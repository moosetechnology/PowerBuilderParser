Extension { #name : #FamixPWBBehavioral }

{ #category : #'*PowerBuilder-Parser-IR' }
FamixPWBBehavioral >> addDependencyToIR: anIRDependency [
	anIRDependency toFamix: self mooseModel dependingBehavioural: self
]

{ #category : #'*PowerBuilder-Parser-IR' }
FamixPWBBehavioral >> addMemberIR: anIREntity [
	(anIREntity toFamix: (self mooseModel))
		beMemberOfBehavioural: self
]
