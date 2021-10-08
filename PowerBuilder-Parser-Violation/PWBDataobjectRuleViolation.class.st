Class {
	#name : #PWBDataobjectRuleViolation,
	#superclass : #PWBAbstractRuleViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBDataobjectRuleViolation >> isReportCrossCommitViolation [
	^ true
]

{ #category : #'as yet unclassified' }
PWBDataobjectRuleViolation >> report [
	^ [ '<li> <code>string dataobject = "" </code> dans '
		, self pwbobjectName ]
]
