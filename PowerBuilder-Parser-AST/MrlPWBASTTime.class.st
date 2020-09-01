Class {
	#name : #MrlPWBASTTime,
	#superclass : #Object,
	#instVars : [
		'time',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTTime >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ time = anObject time
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTTime >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTTime: self
]

{ #category : #comparing }
MrlPWBASTTime >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ time hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTTime >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTTime >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTTime >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTTime >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTTime >> time [
	^ time
]

{ #category : #accessing }
MrlPWBASTTime >> time: anObject [
	time := anObject
]
