Class {
	#name : #PWBASTOptions,
	#superclass : #Object,
	#instVars : [
		'options',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTOptions >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTOptions: self
]

{ #category : #accessing }
PWBASTOptions >> options [
	^ options
]

{ #category : #accessing }
PWBASTOptions >> options: anObject [
	options := anObject
]

{ #category : #accessing }
PWBASTOptions >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTOptions >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTOptions >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTOptions >> stopPosition: anObject [
	stopPosition := anObject
]
