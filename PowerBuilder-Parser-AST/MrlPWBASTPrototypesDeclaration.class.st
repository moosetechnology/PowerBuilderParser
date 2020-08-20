Class {
	#name : #MrlPWBASTPrototypesDeclaration,
	#superclass : #Object,
	#instVars : [
		'declarations',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTPrototypesDeclaration >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ declarations = anObject declarations
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTPrototypesDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTPrototypesDeclaration: self
]

{ #category : #accessing }
MrlPWBASTPrototypesDeclaration >> declarations [
	^ declarations
]

{ #category : #accessing }
MrlPWBASTPrototypesDeclaration >> declarations: anObject [
	declarations := anObject
]

{ #category : #comparing }
MrlPWBASTPrototypesDeclaration >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ declarations hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTPrototypesDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTPrototypesDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTPrototypesDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTPrototypesDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]
