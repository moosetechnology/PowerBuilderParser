Class {
	#name : #PWBArgumentNameViolation,
	#superclass : #PWBVariableNameViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #message }
PWBArgumentNameViolation >> report [
	behavior ifNil: [ ^ self ].
	^ [ '<li>Le nom de l''argument ' , self value , 'de '
		, self pwbobjectName , '>>' , self behavior name , String space
		, 'doit commencer par <code>a</code> ' , String space , '</li>' ]
]
