Class {
	#name : #PWBASTExport,
	#superclass : #Object,
	#instVars : [
		'formatType',
		'parameters',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTExport >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ formatType = anObject formatType
		and: [ parameters = anObject parameters
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTExport >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTExport: self
]

{ #category : #accessing }
PWBASTExport >> formatType [
	^ formatType
]

{ #category : #accessing }
PWBASTExport >> formatType: anObject [
	formatType := anObject
]

{ #category : #comparing }
PWBASTExport >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ formatType hash
		bitXor:
			(parameters hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTExport >> parameters [
	^ parameters
]

{ #category : #accessing }
PWBASTExport >> parameters: anObject [
	parameters := anObject
]

{ #category : #accessing }
PWBASTExport >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTExport >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTExport >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTExport >> stopPosition: anObject [
	stopPosition := anObject
]
