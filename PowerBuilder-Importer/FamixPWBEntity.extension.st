Extension { #name : #FamixPWBEntity }

{ #category : #'*PowerBuilder-Importer' }
FamixPWBEntity >> increaseCyclomaticComplexity [
	self cyclomaticComplexity: self cyclomaticComplexity + 1 
]
