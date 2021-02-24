Class {
	#name : #PWBChooseCaseRuleViolation,
	#superclass : #PWBAbstractRuleViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBChooseCaseRuleViolation >> reportMessageForChooseWithoutElseCase [
	report := [ '<li> <code>ChooseCase </code> dans '
		, self pwbobjectName , '>>' , self behavior name , String space
		, 'sans un <code>elseCase</code>. La violation commence a la  ligne'
		, String space , self relativeLine asString , String space , '</li>' ]
]

{ #category : #'as yet unclassified' }
PWBChooseCaseRuleViolation >> reportMessageForNumberOfCase [
	report := [ '<li> <code> ChooseCase</code> avec ' , self value asString
		, '<code>case</code> dans ' , self pwbobjectName , '>>'
		, self behavior name , String space
		,
			'. Le nombre de <code>case</code> doit etre normalement a 10. La violation commence a la  ligne'
		, String space , self relativeLine asString , String space , '</li>' ]
]
