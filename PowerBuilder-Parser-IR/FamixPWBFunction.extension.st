Extension { #name : #FamixPWBFunction }

{ #category : #'*PowerBuilder-Parser-IR' }
FamixPWBFunction >> addMemberIR: anIREntity [
	(anIREntity toFamix: (self mooseModel))
		parentBehaviouralEntity: self
]
