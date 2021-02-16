Class {
	#name : #PWBChooseCaseRuleViolation,
	#superclass : #PWBAbstractRuleViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBChooseCaseRuleViolation >> reportMessageForChooseWithoutElseCase [
	report := [ '<li> ChooseCase  dans ' , self pwbobjectName , '>>'
		, self behavior name , String space
		, 'sans un elseCase. La violation commence a la  ligne'
		, String space , self relativeLine asString , String space , '</li>' ]
]

{ #category : #'as yet unclassified' }
PWBChooseCaseRuleViolation >> reportMessageForNumberOfCase [
	report := [ '<li> ChooseCase avec ' , self value asString , ' dans '
		, self pwbobjectName , '>>' , self behavior name , String space
		,
			'. Le nombre de case doit etre normalement a 10. La violation commence a la  ligne'
		, String space , self relativeLine asString , String space , '</li>' ]
]
