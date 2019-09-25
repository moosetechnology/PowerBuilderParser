Class {
	#name : #PWBASTVariableDeclarations,
	#superclass : #Object,
	#instVars : [
		'type',
		'variableAssignations',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTVariableDeclarations >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ type = anObject type
		and: [ variableAssignations = anObject variableAssignations
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTVariableDeclarations >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTVariableDeclarations: self
]

{ #category : #comparing }
PWBASTVariableDeclarations >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ type hash
		bitXor:
			(variableAssignations hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTVariableDeclarations >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTVariableDeclarations >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTVariableDeclarations >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTVariableDeclarations >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTVariableDeclarations >> type [
	^ type
]

{ #category : #accessing }
PWBASTVariableDeclarations >> type: anObject [
	type := anObject
]

{ #category : #accessing }
PWBASTVariableDeclarations >> variableAssignations [
	^ variableAssignations
]

{ #category : #accessing }
PWBASTVariableDeclarations >> variableAssignations: anObject [
	variableAssignations := anObject
]
