Class {
	#name : #PWBArgumentNameRuleViolation,
	#superclass : #PWBVariableNameViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBArgumentNameRuleViolation >> reportOn: stream [
	stream
		<< '<li>Le nom de l''Argument ';
		<< self value;
		<< 'de ';
		<< self behavior parentType name;
		<< '>>';
		<< self behavior name;
		space;
		<< 'doit commencer par <<a>> ';
		space;
		<< '</li>'
]
