Class {
	#name : #PWBSharedVariableNameViolation,
	#superclass : #PWBVariableNameViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #message }
PWBSharedVariableNameViolation >> report [
	^ [ '<li>Le nom de la variable partager ' , self value , String space
		, 'doit commencer par <code>s</code> ' , String space , '</li>' ]
]
