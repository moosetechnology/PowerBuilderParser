Class {
	#name : #PWBVariableNameViolation,
	#superclass : #PWBAbstractRuleViolation,
	#instVars : [
		'pwbobject',
		'value'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #accessing }
PWBVariableNameViolation >> value [
	^ value
]

{ #category : #accessing }
PWBVariableNameViolation >> value: aString [
	value := aString
]
