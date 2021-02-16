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
	report := '<li>' , self value asString , ' dans '
		, self pwbobjectName , '>>' , self behavior name , String space
		, 'a la ligne' , String space , self relativeLine asString
		, String space , '</li>'
]

{ #category : #'as yet unclassified' }
PWBLimitRuleViolation >> reportMessageForChooseCase [
	report := '<li> ChooseCase avec ' , self value asString , ' dans '
		, self pwbobjectName , '>>' , self behavior name , String space
		,
			'. Le nombre de case doit etre normalement a 10. La violation commence a la  ligne'
		, String space , self relativeLine asString , String space , '</li>'
]
