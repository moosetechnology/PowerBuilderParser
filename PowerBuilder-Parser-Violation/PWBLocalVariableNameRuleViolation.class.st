Class {
	#name : #PWBLocalVariableNameRuleViolation,
	#superclass : #PWBVariableNameViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBLocalVariableNameRuleViolation >> reportOn: stream [
	stream
		<< '<li>Le nom de la variable local ';
		<< self value;
		<< 'de';
		space;
		<< self pwbobjectName;
		<< '>>';
		<< self behavior name;
		space;
		<< 'doit commencer par <code>l</code>';
		space;
		<< '</li>'
]
