Class {
	#name : #PWBQueryLimitRuleViolation,
	#superclass : #Object,
	#instVars : [
		'file',
		'startPosition',
		'stopPosition',
		'library',
		'behavior'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #accessing }
PWBQueryLimitRuleViolation >> behavior [
	^ behavior
]

{ #category : #accessing }
PWBQueryLimitRuleViolation >> behavior: aFamixPWBBehavior [
	behavior := aFamixPWBBehavior
]

{ #category : #accessing }
PWBQueryLimitRuleViolation >> behaviorName [
	^ self behavior name
]

{ #category : #accessing }
PWBQueryLimitRuleViolation >> file [
	^ file
]

{ #category : #accessing }
PWBQueryLimitRuleViolation >> file: aFileReference [
	file := aFileReference
]

{ #category : #accessing }
PWBQueryLimitRuleViolation >> libray: aFamixPWBLibrary [
	library := aFamixPWBLibrary
]

{ #category : #accessing }
PWBQueryLimitRuleViolation >> objectName [
	^ self file basenameWithoutExtension
]

{ #category : #accessing }
PWBQueryLimitRuleViolation >> relativeLine [
	^ self file contents
		lineCorrespondingToIndex: self startPosition - self behavior sourceAnchor startPos
]

{ #category : #accessing }
PWBQueryLimitRuleViolation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBQueryLimitRuleViolation >> startPosition: anInteger [
	startPosition := anInteger
]

{ #category : #accessing }
PWBQueryLimitRuleViolation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBQueryLimitRuleViolation >> stopPosition: anInteger [
	stopPosition := anInteger
]

{ #category : #accessing }
PWBQueryLimitRuleViolation >> value [
	^ file contents copyFrom: self startPosition to: self stopPosition
]
