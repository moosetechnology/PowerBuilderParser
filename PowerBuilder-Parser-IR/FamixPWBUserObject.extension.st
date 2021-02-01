Extension { #name : #FamixPWBUserObject }

{ #category : #'*PowerBuilder-Parser-IR' }
FamixPWBUserObject >> addMemberIR: anIREntity [
	(anIREntity toFamix: FamixPWBAttribute)
		parentType: self
]
