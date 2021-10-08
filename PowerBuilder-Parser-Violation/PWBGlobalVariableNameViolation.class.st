Class {
	#name : #PWBGlobalVariableNameViolation,
	#superclass : #PWBVariableNameViolation,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #message }
PWBGlobalVariableNameViolation >> report [
	^ [ '<li>Le nom de la variable global ' , self value , String space
		, 'doit commencer par <code>g</code> ' , String space , '</li>' ]
]
