Class {
	#name : #PWBASTTime,
	#superclass : #Object,
	#instVars : [
		'time',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTTime >> = anObject [
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
PWBASTTime >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTTime: self
]

{ #category : #comparing }
PWBASTTime >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ time hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTTime >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTTime >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTTime >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTTime >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTTime >> time [
	^ time
]

{ #category : #accessing }
PWBASTTime >> time: anObject [
	time := anObject
]
