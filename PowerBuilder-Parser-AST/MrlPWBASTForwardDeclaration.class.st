Class {
	#name : #MrlPWBASTForwardDeclaration,
	#superclass : #Object,
	#instVars : [
		'typeDeclarations',
		'endForward',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTForwardDeclaration >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ typeDeclarations = anObject typeDeclarations
		and: [ endForward = anObject endForward
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
MrlPWBASTForwardDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTForwardDeclaration: self
]

{ #category : #accessing }
MrlPWBASTForwardDeclaration >> endForward [
	^ endForward
]

{ #category : #accessing }
MrlPWBASTForwardDeclaration >> endForward: anObject [
	endForward := anObject
]

{ #category : #comparing }
MrlPWBASTForwardDeclaration >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ typeDeclarations hash
		bitXor:
			(endForward hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTForwardDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTForwardDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTForwardDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTForwardDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTForwardDeclaration >> typeDeclarations [
	^ typeDeclarations
]

{ #category : #accessing }
MrlPWBASTForwardDeclaration >> typeDeclarations: anObject [
	typeDeclarations := anObject
]
