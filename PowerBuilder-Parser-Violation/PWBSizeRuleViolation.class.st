Class {
	#name : #PWBSizeRuleViolation,
	#superclass : #PWBAbstractRuleViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBSizeRuleViolation >> reportMessageForBehaviorParametersSize [
	report := [ report := '<li>La routine ' , self pwbobjectName , '>>'
		, self behavior name , String space
		,
			'a trop de parametres. En effet le nombre de parametres doit être inferieur a 10 '
		, String space , '</li>' ]
]

{ #category : #'as yet unclassified' }
PWBSizeRuleViolation >> reportMessageForFileSize [
	report := [ '<li> La taille du fichier' , self file basename
		,
			' est trop grosse. En effet la taille d''un fichier doit inférieur a 100.</li>' ]
]
