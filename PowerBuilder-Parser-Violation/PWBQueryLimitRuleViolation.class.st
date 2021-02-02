Class {
	#name : #PWBQueryLimitRuleViolation,
	#superclass : #PWBAbstractRuleViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBQueryLimitRuleViolation >> isReportCrossCommitViolation [
	^ true
]

{ #category : #'as yet unclassified' }
PWBQueryLimitRuleViolation >> reportOn: stream [
	self behavior ifNil: [ ^ self ].
	stream
		<< '<li>';
		<< self value asString;
		<< ' dans ';
		<< self pwbobjectName;
		<< '>>';
		<< self behavior name;
		space;
		<< 'a la ligne';
		space;
		<< self relativeLine asString;
		space;
		<< '</li>'
]
