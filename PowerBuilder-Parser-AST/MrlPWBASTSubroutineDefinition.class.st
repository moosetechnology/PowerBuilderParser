Class {
	#name : #MrlPWBASTSubroutineDefinition,
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
MrlPWBASTSubroutineDefinition >> = anObject [
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
MrlPWBASTSubroutineDefinition >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTSubroutineDefinition: self
]

{ #category : #comparing }
MrlPWBASTSubroutineDefinition >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ subroutineSignature hash
		bitXor:
			(statements hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTSubroutineDefinition >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTSubroutineDefinition >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTSubroutineDefinition >> statements [
	^ statements
]

{ #category : #accessing }
MrlPWBASTSubroutineDefinition >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
MrlPWBASTSubroutineDefinition >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTSubroutineDefinition >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTSubroutineDefinition >> subroutineSignature [
	^ subroutineSignature
]

{ #category : #accessing }
MrlPWBASTSubroutineDefinition >> subroutineSignature: anObject [
	subroutineSignature := anObject
]
