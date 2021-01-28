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
PWBVariableNameViolation >> pwbobject [
	^ pwbobject
]

{ #category : #accessing }
PWBVariableNameViolation >> pwbobject: anObject [
	pwbobject := anObject
]

{ #category : #accessing }
PWBVariableNameViolation >> value: aString [
	value := aString
]
