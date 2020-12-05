Class {
	#name : #PWBASTParametrizedType,
	#superclass : #Object,
	#instVars : [
		'parametrizedType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTParametrizedType >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ parametrizedType = anObject parametrizedType
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTParametrizedType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTParametrizedType: self
]

{ #category : #comparing }
PWBASTParametrizedType >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ parametrizedType hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTParametrizedType >> parametrizedType [
	^ parametrizedType
]

{ #category : #accessing }
PWBASTParametrizedType >> parametrizedType: anObject [
	parametrizedType := anObject
]

{ #category : #accessing }
PWBASTParametrizedType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTParametrizedType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTParametrizedType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTParametrizedType >> stopPosition: anObject [
	stopPosition := anObject
]
