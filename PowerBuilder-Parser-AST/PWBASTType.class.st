Class {
	#name : #PWBASTType,
	#superclass : #Object,
	#instVars : [
		'type',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTType: self
]

{ #category : #accessing }
PWBASTType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTType >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTType >> type [
	^ type
]

{ #category : #accessing }
PWBASTType >> type: anObject [
	type := anObject
]
