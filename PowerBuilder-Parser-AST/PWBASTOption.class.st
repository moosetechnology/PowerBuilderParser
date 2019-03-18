Class {
	#name : #PWBASTOption,
	#superclass : #Object,
	#instVars : [
		'access',
		'optionValue',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTOption >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTOption: self
]

{ #category : #accessing }
PWBASTOption >> access [
	^ access
]

{ #category : #accessing }
PWBASTOption >> access: anObject [
	access := anObject
]

{ #category : #accessing }
PWBASTOption >> optionValue [
	^ optionValue
]

{ #category : #accessing }
PWBASTOption >> optionValue: anObject [
	optionValue := anObject
]

{ #category : #accessing }
PWBASTOption >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTOption >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTOption >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTOption >> stopPosition: anObject [
	stopPosition := anObject
]
