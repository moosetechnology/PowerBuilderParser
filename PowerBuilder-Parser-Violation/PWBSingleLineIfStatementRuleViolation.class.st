Class {
	#name : #PWBSingleLineIfStatementRuleViolation,
	#superclass : #PWBAbstractRuleViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBSingleLineIfStatementRuleViolation >> reportOn: stream [
	"self behavior ifNil: [ ^ self ].
	stream
		<< '<li> Une instruction if sur la ligne sans end if ';
		<< ' dans ';
		<< self pwbobjectName;
		<< '>>';
		<< self behavior name;
		space;
		<< 'a la ligne';
		space;
		<< self relativeLine asString;
		space;
		<< '</li>'"

	^ stream
]
