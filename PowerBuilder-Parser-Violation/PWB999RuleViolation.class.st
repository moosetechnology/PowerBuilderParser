Class {
	#name : #PWB999RuleViolation,
	#superclass : #PWBAbstractRuleViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWB999RuleViolation >> isReportCrossCommitViolation [
	^ true
]

{ #category : #'as yet unclassified' }
PWB999RuleViolation >> report [
	^ [ '<li>' , self value asString , ' dans ' , self pwbobjectName
		, '>>' , self behavior name , String space , 'a la ligne'
		, String space , self relativeLine asString , String space , '</li>' ]
]
