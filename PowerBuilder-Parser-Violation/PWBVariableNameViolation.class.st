Class {
	#name : #PWBVariableNameViolation,
	#superclass : #PWBAbstractRuleViolation,
	#instVars : [
		'pwbobject'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #converting }
PWBVariableNameViolation >> asGlobalVariableNameViolation [
	^ self as: PWBGlobalVariableNameViolation
]

{ #category : #converting }
PWBVariableNameViolation >> asInstanceVariableNameViolation [
	^ self as: PWBInstanceVariableNameViolation
]

{ #category : #converting }
PWBVariableNameViolation >> asSharedVariableNameViolation [
	^ self as: PWBSharedVariableNameViolation
]

{ #category : #testing }
PWBVariableNameViolation >> isNameViolation [
	^ true
]
