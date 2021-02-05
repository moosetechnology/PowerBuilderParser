Extension { #name : #FamixPWBUserObject }

{ #category : #'*PowerBuilder-Parser-IR' }
FamixPWBUserObject >> addMemberIR: anIREntity [
	(anIREntity toFamixAsMemberOfUserObject: self)
		parentType: self
]
