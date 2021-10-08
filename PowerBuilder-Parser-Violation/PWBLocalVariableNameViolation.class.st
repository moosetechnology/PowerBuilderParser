Class {
	#name : #PWBLocalVariableNameViolation,
	#superclass : #PWBVariableNameViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #message }
PWBLocalVariableNameViolation >> report [
	behavior name ifNil: [ ^ self ].
	^ [ '<li>Le nom de la variable locale ' , self value , ' de '
		, self pwbobjectName , '>>' , self behavior name , String space
		, 'doit commencer par <code>l</code> ' , String space , '</li>' ]
]
