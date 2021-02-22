Extension { #name : #FamixPWBUserObject }

{ #category : #'*PowerBuilder-Parser-IR' }
FamixPWBUserObject >> addMemberIR: anIREntity [
	anIREntity toFamix: self mooseModel asMemberOfUserObject: self
]
