Class {
	#name : #PWBASTEventType,
	#superclass : #Object,
	#instVars : [
		'eventType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTEventType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEventType: self
]

{ #category : #accessing }
PWBASTEventType >> eventType [
	^ eventType
]

{ #category : #accessing }
PWBASTEventType >> eventType: anObject [
	eventType := anObject
]

{ #category : #accessing }
PWBASTEventType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTEventType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTEventType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTEventType >> stopPosition: anObject [
	stopPosition := anObject
]
