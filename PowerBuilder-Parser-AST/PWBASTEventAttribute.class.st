Class {
	#name : #PWBASTEventAttribute,
	#superclass : #Object,
	#instVars : [
		'returnType',
		'eventName',
		'attribute',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTEventAttribute >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEventAttribute: self
]

{ #category : #accessing }
PWBASTEventAttribute >> attribute [
	^ attribute
]

{ #category : #accessing }
PWBASTEventAttribute >> attribute: anObject [
	attribute := anObject
]

{ #category : #accessing }
PWBASTEventAttribute >> eventName [
	^ eventName
]

{ #category : #accessing }
PWBASTEventAttribute >> eventName: anObject [
	eventName := anObject
]

{ #category : #accessing }
PWBASTEventAttribute >> returnType [
	^ returnType
]

{ #category : #accessing }
PWBASTEventAttribute >> returnType: anObject [
	returnType := anObject
]

{ #category : #accessing }
PWBASTEventAttribute >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTEventAttribute >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTEventAttribute >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTEventAttribute >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTEventAttribute >> type [
	^ type
]

{ #category : #accessing }
PWBASTEventAttribute >> type: anObject [
	type := anObject
]
