Class {
	#name : #MrlPWBASTGlobalVariableDeclaration,
	#superclass : #Object,
	#instVars : [
		'type',
		'variable',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTGlobalVariableDeclaration >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ type = anObject type
		and: [ variable = anObject variable
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
MrlPWBASTGlobalVariableDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTGlobalVariableDeclaration: self
]

{ #category : #comparing }
MrlPWBASTGlobalVariableDeclaration >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ type hash
		bitXor: (variable hash bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTGlobalVariableDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTGlobalVariableDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTGlobalVariableDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTGlobalVariableDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTGlobalVariableDeclaration >> type [
	^ type
]

{ #category : #accessing }
MrlPWBASTGlobalVariableDeclaration >> type: anObject [
	type := anObject
]

{ #category : #accessing }
MrlPWBASTGlobalVariableDeclaration >> variable [
	^ variable
]

{ #category : #accessing }
MrlPWBASTGlobalVariableDeclaration >> variable: anObject [
	variable := anObject
]
