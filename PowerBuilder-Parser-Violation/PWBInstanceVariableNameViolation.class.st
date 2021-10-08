Class {
	#name : #PWBInstanceVariableNameViolation,
	#superclass : #PWBVariableNameViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #message }
PWBInstanceVariableNameViolation >> report [
	^ [ '<li>Le nom de la variable d''instance ' , self value
		, String space , 'doit commencer par <code>i</code> ' , String space
		, '</li>' ]
]
