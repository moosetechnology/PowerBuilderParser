Class {
	#name : #PWBASTSubroutineDeclaration,
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
PWBASTSubroutineDeclaration >> = anObject [
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
PWBASTSubroutineDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSubroutineDeclaration: self
]

{ #category : #accessing }
PWBASTSubroutineDeclaration >> behaviouralOptions [
	^ behaviouralOptions
]

{ #category : #accessing }
PWBASTSubroutineDeclaration >> behaviouralOptions: anObject [
	behaviouralOptions := anObject
]

{ #category : #comparing }
PWBASTSubroutineDeclaration >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ subroutineSignature hash
		bitXor:
			(behaviouralOptions hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTSubroutineDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSubroutineDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSubroutineDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSubroutineDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTSubroutineDeclaration >> subroutineSignature [
	^ subroutineSignature
]

{ #category : #accessing }
PWBASTSubroutineDeclaration >> subroutineSignature: anObject [
	subroutineSignature := anObject
]
