Class {
	#name : #PWBASTFormatType,
	#superclass : #Object,
	#instVars : [
		'formatType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTFormatType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFormatType: self
]

{ #category : #accessing }
PWBASTFormatType >> formatType [
	^ formatType
]

{ #category : #accessing }
PWBASTFormatType >> formatType: anObject [
	formatType := anObject
]

{ #category : #accessing }
PWBASTFormatType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTFormatType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTFormatType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTFormatType >> stopPosition: anObject [
	stopPosition := anObject
]
