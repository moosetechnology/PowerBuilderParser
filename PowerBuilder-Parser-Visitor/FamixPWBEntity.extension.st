Extension { #name : #FamixPWBEntity }

{ #category : #'*PowerBuilder-Parser-Visitor' }
FamixPWBEntity >> increaseCyclomaticComplexity [
	self cyclomaticComplexity: self cyclomaticComplexity + 1 
]
