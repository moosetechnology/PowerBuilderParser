Class {
	#name : #PWBASTGlobalVariableDeclaration,
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
PWBASTGlobalVariableDeclaration >> = anObject [
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
PWBASTGlobalVariableDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTGlobalVariableDeclaration: self
]

{ #category : #comparing }
PWBASTGlobalVariableDeclaration >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ type hash
		bitXor: (variable hash bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTGlobalVariableDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTGlobalVariableDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTGlobalVariableDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTGlobalVariableDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTGlobalVariableDeclaration >> type [
	^ type
]

{ #category : #accessing }
PWBASTGlobalVariableDeclaration >> type: anObject [
	type := anObject
]

{ #category : #accessing }
PWBASTGlobalVariableDeclaration >> variable [
	^ variable
]

{ #category : #accessing }
PWBASTGlobalVariableDeclaration >> variable: anObject [
	variable := anObject
]
