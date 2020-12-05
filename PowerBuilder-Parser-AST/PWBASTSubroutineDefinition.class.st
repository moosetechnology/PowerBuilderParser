Class {
	#name : #PWBASTSubroutineDefinition,
	#superclass : #Object,
	#instVars : [
		'subroutineSignature',
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTSubroutineDefinition >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ subroutineSignature = anObject subroutineSignature
		and: [ statements = anObject statements
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTSubroutineDefinition >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSubroutineDefinition: self
]

{ #category : #comparing }
PWBASTSubroutineDefinition >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ subroutineSignature hash
		bitXor:
			(statements hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> subroutineSignature [
	^ subroutineSignature
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> subroutineSignature: anObject [
	subroutineSignature := anObject
]
