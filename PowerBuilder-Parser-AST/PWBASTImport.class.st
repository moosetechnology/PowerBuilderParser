Class {
	#name : #PWBASTImport,
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
PWBASTImport >> = anObject [
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
PWBASTImport >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTImport: self
]

{ #category : #accessing }
PWBASTImport >> formatType [
	^ formatType
]

{ #category : #accessing }
PWBASTImport >> formatType: anObject [
	formatType := anObject
]

{ #category : #comparing }
PWBASTImport >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ formatType hash
		bitXor:
			(parameters hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTImport >> parameters [
	^ parameters
]

{ #category : #accessing }
PWBASTImport >> parameters: anObject [
	parameters := anObject
]

{ #category : #accessing }
PWBASTImport >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTImport >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTImport >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTImport >> stopPosition: anObject [
	stopPosition := anObject
]
