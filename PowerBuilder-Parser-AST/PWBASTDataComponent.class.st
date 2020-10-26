Class {
	#name : #PWBASTDataComponent,
	#superclass : #Object,
	#instVars : [
		'dataComponent',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTDataComponent >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ dataComponent = anObject dataComponent
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTDataComponent >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDataComponent: self
]

{ #category : #accessing }
PWBASTDataComponent >> dataComponent [
	^ dataComponent
]

{ #category : #accessing }
PWBASTDataComponent >> dataComponent: anObject [
	dataComponent := anObject
]

{ #category : #comparing }
PWBASTDataComponent >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ dataComponent hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTDataComponent >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDataComponent >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDataComponent >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDataComponent >> stopPosition: anObject [
	stopPosition := anObject
]
