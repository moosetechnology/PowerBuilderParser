Class {
	#name : #MrlPWBASTSubroutineDeclaration,
	#superclass : #Object,
	#instVars : [
		'subroutineSignature',
		'behaviouralOptions',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTSubroutineDeclaration >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ subroutineSignature = anObject subroutineSignature
		and: [ behaviouralOptions = anObject behaviouralOptions
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
MrlPWBASTSubroutineDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTSubroutineDeclaration: self
]

{ #category : #accessing }
MrlPWBASTSubroutineDeclaration >> behaviouralOptions [
	^ behaviouralOptions
]

{ #category : #accessing }
MrlPWBASTSubroutineDeclaration >> behaviouralOptions: anObject [
	behaviouralOptions := anObject
]

{ #category : #comparing }
MrlPWBASTSubroutineDeclaration >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ subroutineSignature hash
		bitXor:
			(behaviouralOptions hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTSubroutineDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTSubroutineDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTSubroutineDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTSubroutineDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTSubroutineDeclaration >> subroutineSignature [
	^ subroutineSignature
]

{ #category : #accessing }
MrlPWBASTSubroutineDeclaration >> subroutineSignature: anObject [
	subroutineSignature := anObject
]
