Class {
	#name : #PWBASTNumber,
	#superclass : #Object,
	#instVars : [
		'number',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTNumber >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTNumber: self
]

{ #category : #accessing }
PWBASTNumber >> number [
	^ number
]

{ #category : #accessing }
PWBASTNumber >> number: anObject [
	number := anObject
]

{ #category : #accessing }
PWBASTNumber >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTNumber >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTNumber >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTNumber >> stopPosition: anObject [
	stopPosition := anObject
]
