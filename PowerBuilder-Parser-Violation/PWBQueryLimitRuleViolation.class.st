Class {
	#name : #PWBQueryLimitRuleViolation,
	#superclass : #PWBAbstractRuleViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBQueryLimitRuleViolation >> reportOn: stream [
	stream
		<< '<li>9999 dans ';
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
