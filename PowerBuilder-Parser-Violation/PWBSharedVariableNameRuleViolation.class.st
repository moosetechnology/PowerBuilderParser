Class {
	#name : #PWBSharedVariableNameRuleViolation,
	#superclass : #PWBVariableNameViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBSharedVariableNameRuleViolation >> reportOn: stream [
	stream
		<< '<li>Le nom de la variable partagé ';
		<< self value;
		<< 'de l''objet';
		space;
		<< self pwbobjectName;
		space;
		<< 'doit commencer par <code>s</code> ';
		space;
		<< '</li>'
]
