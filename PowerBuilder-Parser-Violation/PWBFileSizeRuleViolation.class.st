Class {
	#name : #PWBFileSizeRuleViolation,
	#superclass : #PWBAbstractRuleViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBFileSizeRuleViolation >> report [
	^ [ '<li> La taille du fichier' , self file basename
		,
			' est trop grosse. En effet la taille d''un fichier doit inférieur a 100.</li>' ]
]
