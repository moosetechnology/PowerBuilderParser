Class {
	#name : #PWBASTBasicType,
	#superclass : #Object,
	#instVars : [
		'basicType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTBasicType >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ basicType = anObject basicType
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTBasicType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTBasicType: self
]

{ #category : #accessing }
PWBASTBasicType >> basicType [
	^ basicType
]

{ #category : #accessing }
PWBASTBasicType >> basicType: anObject [
	basicType := anObject
]

{ #category : #comparing }
PWBASTBasicType >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ basicType hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTBasicType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTBasicType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTBasicType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTBasicType >> stopPosition: anObject [
	stopPosition := anObject
]
