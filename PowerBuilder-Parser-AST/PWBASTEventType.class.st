Class {
	#name : #PWBASTEventType,
	#superclass : #Object,
	#instVars : [
		'eventType'
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
