Class {
	#name : #PWBASTTypeVariable,
	#superclass : #Object,
	#instVars : [
		'attributes',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTTypeVariable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTTypeVariable: self
]

{ #category : #accessing }
PWBASTTypeVariable >> attributes [
	^ attributes
]

{ #category : #accessing }
PWBASTTypeVariable >> attributes: anObject [
	attributes := anObject
]

{ #category : #accessing }
PWBASTTypeVariable >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTTypeVariable >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTTypeVariable >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTTypeVariable >> stopPosition: anObject [
	stopPosition := anObject
]
