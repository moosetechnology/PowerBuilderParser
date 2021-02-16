Class {
	#name : #PWBVariableNameViolation,
	#superclass : #PWBAbstractRuleViolation,
	#instVars : [
		'pwbobject'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #testing }
PWBVariableNameViolation >> isNameViolation [
	^ true
]

{ #category : #message }
PWBVariableNameViolation >> reportMessageForArgumentName [
	behavior name ifNil: [ ^ self ].
	report := '<li>Le nom de l''argument ' , self value , 'de '
		, self pwbobjectName , '>>' , self behavior name , String space
		, 'doit commencer par <code>a</code> ' , String space , '</li>'
]

{ #category : #message }
PWBVariableNameViolation >> reportMessageForGlobalVariableName [
	report := '<li>Le nom de la variable global ' , self value
		, String space , 'doit commencer par <code>g</code> ' , String space
		, '</li>'
]

{ #category : #message }
PWBVariableNameViolation >> reportMessageForInstanceVariableName [
	report := '<li>Le nom de la variable d''instance ' , self value
		, String space , 'doit commencer par <code>i</code> ' , String space
		, '</li>'
]

{ #category : #message }
PWBVariableNameViolation >> reportMessageForLocalVariableName [
	behavior name ifNil: [ ^ self ].
	report := '<li>Le nom de la variable locale ' , self value , 'de '
		, self pwbobjectName , '>>' , self behavior name , String space
		, 'doit commencer par <code>l</code> ' , String space , '</li>'
]

{ #category : #message }
PWBVariableNameViolation >> reportMessageForSharedVariableName [
	report := '<li>Le nom de la variable partager ' , self value
		, String space , 'doit commencer par <code>s</code> ' , String space
		, '</li>'
]

{ #category : #accessing }
PWBVariableNameViolation >> value [
	^ value
]

{ #category : #accessing }
PWBVariableNameViolation >> value: aString [
	value := aString
]
