Class {
	#name : #PWBASTBehaviouralOption,
	#superclass : #Object,
	#instVars : [
		'behaviouralOption',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTBehaviouralOption >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTBehaviouralOption: self
]

{ #category : #accessing }
PWBASTBehaviouralOption >> behaviouralOption [
	^ behaviouralOption
]

{ #category : #accessing }
PWBASTBehaviouralOption >> behaviouralOption: anObject [
	behaviouralOption := anObject
]

{ #category : #accessing }
PWBASTBehaviouralOption >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTBehaviouralOption >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTBehaviouralOption >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTBehaviouralOption >> stopPosition: anObject [
	stopPosition := anObject
]
