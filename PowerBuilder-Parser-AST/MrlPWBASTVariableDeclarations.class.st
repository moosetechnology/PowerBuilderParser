Class {
	#name : #MrlPWBASTVariableDeclarations,
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
MrlPWBASTVariableDeclarations >> = anObject [
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
MrlPWBASTVariableDeclarations >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTVariableDeclarations: self
]

{ #category : #comparing }
MrlPWBASTVariableDeclarations >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ type hash
		bitXor:
			(variableAssignations hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTVariableDeclarations >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTVariableDeclarations >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTVariableDeclarations >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTVariableDeclarations >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTVariableDeclarations >> type [
	^ type
]

{ #category : #accessing }
MrlPWBASTVariableDeclarations >> type: anObject [
	type := anObject
]

{ #category : #accessing }
MrlPWBASTVariableDeclarations >> variableAssignations [
	^ variableAssignations
]

{ #category : #accessing }
MrlPWBASTVariableDeclarations >> variableAssignations: anObject [
	variableAssignations := anObject
]
