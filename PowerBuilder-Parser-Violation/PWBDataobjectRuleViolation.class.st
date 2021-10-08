Class {
	#name : #PWBDataobjectRuleViolation,
	#superclass : #PWBAbstractRuleViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBDataobjectRuleViolation >> reportMessageForChooseWithoutElseCase [
	report := [ '<li> <code>string dataobject = "" </code> dans '
		, self pwbobjectName ]
]
