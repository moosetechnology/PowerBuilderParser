Class {
	#name : #PWBASTParameters,
	#superclass : #Object,
	#instVars : [
		'options',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTParameters >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTParameters: self
]

{ #category : #accessing }
PWBASTParameters >> options [
	^ options
]

{ #category : #accessing }
PWBASTParameters >> options: anObject [
	options := anObject
]

{ #category : #accessing }
PWBASTParameters >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTParameters >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTParameters >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTParameters >> stopPosition: anObject [
	stopPosition := anObject
]
