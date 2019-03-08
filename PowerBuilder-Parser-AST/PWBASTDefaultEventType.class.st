Class {
	#name : #PWBASTDefaultEventType,
	#superclass : #Object,
	#instVars : [
		'defaultEventType'
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
