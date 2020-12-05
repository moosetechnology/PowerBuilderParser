Class {
	#name : #PWBASTAttribute,
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
PWBASTAttribute >> = anObject [
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
PWBASTAttribute >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAttribute: self
]

{ #category : #accessing }
PWBASTAttribute >> accessModifier [
	^ accessModifier
]

{ #category : #accessing }
PWBASTAttribute >> accessModifier: anObject [
	accessModifier := anObject
]

{ #category : #accessing }
PWBASTAttribute >> descriptor [
	^ descriptor
]

{ #category : #accessing }
PWBASTAttribute >> descriptor: anObject [
	descriptor := anObject
]

{ #category : #comparing }
PWBASTAttribute >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ accessModifier hash
		bitXor:
			(variableDeclarations hash
				bitXor:
					(descriptor hash
						bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
PWBASTAttribute >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTAttribute >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTAttribute >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTAttribute >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTAttribute >> variableDeclarations [
	^ variableDeclarations
]

{ #category : #accessing }
PWBASTAttribute >> variableDeclarations: anObject [
	variableDeclarations := anObject
]
