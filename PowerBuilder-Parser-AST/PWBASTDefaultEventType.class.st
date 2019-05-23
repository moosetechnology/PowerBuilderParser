Class {
	#name : #PWBASTDefaultEventType,
	#superclass : #Object,
	#instVars : [
		'defaultEventType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTDefaultEventType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDefaultEventType: self
]

{ #category : #accessing }
PWBASTDefaultEventType >> defaultEventType [
	^ defaultEventType
]

{ #category : #accessing }
PWBASTDefaultEventType >> defaultEventType: anObject [
	defaultEventType := anObject
]

{ #category : #accessing }
PWBASTDefaultEventType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDefaultEventType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDefaultEventType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDefaultEventType >> stopPosition: anObject [
	stopPosition := anObject
]
