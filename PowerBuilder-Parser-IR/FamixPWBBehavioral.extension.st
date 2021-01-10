Extension { #name : #FamixPWBBehavioral }

{ #category : #'*PowerBuilder-Parser-IR' }
FamixPWBBehavioral >> addDependencyToIR: anIREntity [
	
]

{ #category : #'*PowerBuilder-Parser-IR' }
FamixPWBBehavioral >> addMemberIR: anIREntity [
	anIREntity toFamix
		behavioral: self
]
