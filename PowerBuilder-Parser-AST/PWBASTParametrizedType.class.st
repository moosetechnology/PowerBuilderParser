Class {
	#name : #PWBASTParametrizedType,
	#superclass : #Object,
	#instVars : [
		'parametrizedType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTParametrizedType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTParametrizedType: self
]

{ #category : #accessing }
PWBASTParametrizedType >> parametrizedType [
	^ parametrizedType
]

{ #category : #accessing }
PWBASTParametrizedType >> parametrizedType: anObject [
	parametrizedType := anObject
]

{ #category : #accessing }
PWBASTParametrizedType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTParametrizedType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTParametrizedType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTParametrizedType >> stopPosition: anObject [
	stopPosition := anObject
]
