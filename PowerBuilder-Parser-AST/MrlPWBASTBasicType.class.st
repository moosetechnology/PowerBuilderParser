Class {
	#name : #MrlPWBASTBasicType,
	#superclass : #Object,
	#instVars : [
		'basicType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTBasicType >> = anObject [
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
MrlPWBASTBasicType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTBasicType: self
]

{ #category : #accessing }
MrlPWBASTBasicType >> basicType [
	^ basicType
]

{ #category : #accessing }
MrlPWBASTBasicType >> basicType: anObject [
	basicType := anObject
]

{ #category : #comparing }
MrlPWBASTBasicType >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ basicType hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTBasicType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTBasicType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTBasicType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTBasicType >> stopPosition: anObject [
	stopPosition := anObject
]
