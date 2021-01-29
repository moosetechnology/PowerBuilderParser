Class {
	#name : #PWBInstanceVariableNameRuleViolation,
	#superclass : #PWBVariableNameViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBInstanceVariableNameRuleViolation >> reportOn: stream [
	stream
		<< '<li>Le nom de la variable d''instance ';
		<< self value;
		<< 'de l''objet';
		space;
		<< self pwbobjectName;
		space;
		<< 'doit commencer par <<i>> ';
		space;
		<< '</li>'
]
