Class {
	#name : #MrlPWBASTAttribute,
	#superclass : #Object,
	#instVars : [
		'accessModifier',
		'variableDeclarations',
		'descriptor',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTAttribute >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ accessModifier = anObject accessModifier
		and: [ variableDeclarations = anObject variableDeclarations
				and: [ descriptor = anObject descriptor
						and: [ startPosition = anObject startPosition
								and: [ stopPosition = anObject stopPosition ] ] ] ]
]

{ #category : #visiting }
MrlPWBASTAttribute >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTAttribute: self
]

{ #category : #accessing }
MrlPWBASTAttribute >> accessModifier [
	^ accessModifier
]

{ #category : #accessing }
MrlPWBASTAttribute >> accessModifier: anObject [
	accessModifier := anObject
]

{ #category : #accessing }
MrlPWBASTAttribute >> descriptor [
	^ descriptor
]

{ #category : #accessing }
MrlPWBASTAttribute >> descriptor: anObject [
	descriptor := anObject
]

{ #category : #comparing }
MrlPWBASTAttribute >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ accessModifier hash
		bitXor:
			(variableDeclarations hash
				bitXor:
					(descriptor hash
						bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
MrlPWBASTAttribute >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTAttribute >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTAttribute >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTAttribute >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTAttribute >> variableDeclarations [
	^ variableDeclarations
]

{ #category : #accessing }
MrlPWBASTAttribute >> variableDeclarations: anObject [
	variableDeclarations := anObject
]
