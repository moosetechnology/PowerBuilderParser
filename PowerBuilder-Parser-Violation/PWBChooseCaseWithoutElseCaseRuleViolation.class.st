Class {
	#name : #PWBChooseCaseWithoutElseCaseRuleViolation,
	#superclass : #PWBAbstractRuleViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBChooseCaseWithoutElseCaseRuleViolation >> report [
	^ [ '<li> <code>ChooseCase </code> dans ' , self pwbobjectName , '>>'
		, self behavior name , String space
		, 'sans un <code>elseCase</code>. La violation commence a la  ligne'
		, String space , self relativeLine asString , String space , '</li>' ]
]
