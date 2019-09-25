Class {
	#name : #PWBASTForwardDeclaration,
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
PWBASTForwardDeclaration >> = anObject [
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
PWBASTForwardDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTForwardDeclaration: self
]

{ #category : #accessing }
PWBASTForwardDeclaration >> endForward [
	^ endForward
]

{ #category : #accessing }
PWBASTForwardDeclaration >> endForward: anObject [
	endForward := anObject
]

{ #category : #comparing }
PWBASTForwardDeclaration >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ typeDeclarations hash
		bitXor:
			(endForward hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTForwardDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTForwardDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTForwardDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTForwardDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTForwardDeclaration >> typeDeclarations [
	^ typeDeclarations
]

{ #category : #accessing }
PWBASTForwardDeclaration >> typeDeclarations: anObject [
	typeDeclarations := anObject
]
