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

{ #category : #'as yet unclassified' }
PWBQueryLimitRuleViolation >> behavior [
	^ behavior
]

{ #category : #accessing }
PWBQueryLimitRuleViolation >> behavior: aFamixPWBBehavior [
	behavior := aFamixPWBBehavior
]

{ #category : #'as yet unclassified' }
PWBQueryLimitRuleViolation >> behaviorName [
	^ self behavior name
]

{ #category : #'as yet unclassified' }
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

{ #category : #'as yet unclassified' }
PWBQueryLimitRuleViolation >> objectName [
	^ self file basenameWithoutExtension
]

{ #category : #'as yet unclassified' }
PWBQueryLimitRuleViolation >> relativeLine [
	^ self file contents
		lineCorrespondingToIndex: self startPosition - self behavior sourceAnchor startPos
]

{ #category : #'as yet unclassified' }
PWBQueryLimitRuleViolation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBQueryLimitRuleViolation >> startPosition: anInteger [
	startPosition := anInteger
]

{ #category : #'as yet unclassified' }
PWBQueryLimitRuleViolation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBQueryLimitRuleViolation >> stopPosition: anInteger [
	stopPosition := anInteger
]

{ #category : #'as yet unclassified' }
PWBQueryLimitRuleViolation >> value [
	^ file contents copyFrom: self startPosition to: self stopPosition
]
