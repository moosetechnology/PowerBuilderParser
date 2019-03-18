Class {
	#name : #PWBASTAccessOrType,
	#superclass : #Object,
	#instVars : [
		'accessOrType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTAccessOrType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAccessOrType: self
]

{ #category : #accessing }
PWBASTAccessOrType >> accessOrType [
	^ accessOrType
]

{ #category : #accessing }
PWBASTAccessOrType >> accessOrType: anObject [
	accessOrType := anObject
]

{ #category : #accessing }
PWBASTAccessOrType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTAccessOrType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTAccessOrType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTAccessOrType >> stopPosition: anObject [
	stopPosition := anObject
]
