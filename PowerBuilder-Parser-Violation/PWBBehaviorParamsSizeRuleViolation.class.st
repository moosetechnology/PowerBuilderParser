Class {
	#name : #PWBBehaviorParamsSizeRuleViolation,
	#superclass : #PWBAbstractRuleViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBBehaviorParamsSizeRuleViolation >> report [
	^ [ '<li>La routine ' , self pwbobjectName , '>>'
		, self behavior name , String space , 'à ' , self value asString
		,
			' de parametres. En effet le nombre de parametres doit être inferieur à 10 '
		, String space , '</li>' ]
]
