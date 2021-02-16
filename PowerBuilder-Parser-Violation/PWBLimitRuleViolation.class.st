Class {
	#name : #PWBLimitRuleViolation,
	#superclass : #PWBAbstractRuleViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBLimitRuleViolation >> isReportCrossCommitViolation [
	^ true
]

{ #category : #'as yet unclassified' }
PWBLimitRuleViolation >> reportMessageFor9999 [
	report := [ '<li>' , self value asString , ' dans '
		, self pwbobjectName , '>>' , self behavior name , String space
		, 'a la ligne' , String space , self relativeLine asString
		, String space , '</li>' ]
]
