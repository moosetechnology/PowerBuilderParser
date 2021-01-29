Class {
	#name : #PWBGlobalVariableNameRuleViolation,
	#superclass : #PWBVariableNameViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBGlobalVariableNameRuleViolation >> reportOn: stream [
	stream
		<< '<li>Le nom de la variable global ';
		<< self value;
		space;
		<< 'doit commencer par <<g>> ';
		space;
		<< '</li>'
]
