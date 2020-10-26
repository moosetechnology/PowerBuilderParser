Class {
	#name : #MrlPWBASTParametrizedType,
	#superclass : #Object,
	#instVars : [
		'parametrizedType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTParametrizedType >> = anObject [
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
MrlPWBASTParametrizedType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTParametrizedType: self
]

{ #category : #comparing }
MrlPWBASTParametrizedType >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ parametrizedType hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTParametrizedType >> parametrizedType [
	^ parametrizedType
]

{ #category : #accessing }
MrlPWBASTParametrizedType >> parametrizedType: anObject [
	parametrizedType := anObject
]

{ #category : #accessing }
MrlPWBASTParametrizedType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTParametrizedType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTParametrizedType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTParametrizedType >> stopPosition: anObject [
	stopPosition := anObject
]
