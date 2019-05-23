Class {
	#name : #PWBASTArgumentOption,
	#superclass : #Object,
	#instVars : [
		'argumentOption',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTArgumentOption >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArgumentOption: self
]

{ #category : #accessing }
PWBASTArgumentOption >> argumentOption [
	^ argumentOption
]

{ #category : #accessing }
PWBASTArgumentOption >> argumentOption: anObject [
	argumentOption := anObject
]

{ #category : #accessing }
PWBASTArgumentOption >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTArgumentOption >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTArgumentOption >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTArgumentOption >> stopPosition: anObject [
	stopPosition := anObject
]
