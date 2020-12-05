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

{ #category : #comparing }
PWBASTOptions >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ options = anObject options
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTOptions >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTOptions: self
]

{ #category : #comparing }
PWBASTOptions >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ options hash bitXor: (startPosition hash bitXor: stopPosition hash)
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
