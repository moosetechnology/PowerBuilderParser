Class {
	#name : #PWBASTDataWindow,
	#superclass : #Object,
	#instVars : [
		'parameters',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTDataWindow >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDataWindow: self
]

{ #category : #accessing }
PWBASTDataWindow >> parameters [
	^ parameters
]

{ #category : #accessing }
PWBASTDataWindow >> parameters: anObject [
	parameters := anObject
]

{ #category : #accessing }
PWBASTDataWindow >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDataWindow >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDataWindow >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDataWindow >> stopPosition: anObject [
	stopPosition := anObject
]
