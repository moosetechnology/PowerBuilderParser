Class {
	#name : #PWBASTPrototypesDeclaration,
	#superclass : #Object,
	#instVars : [
		'declarations',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTPrototypesDeclaration >> = anObject [
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
PWBASTPrototypesDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTPrototypesDeclaration: self
]

{ #category : #accessing }
PWBASTPrototypesDeclaration >> declarations [
	^ declarations
]

{ #category : #accessing }
PWBASTPrototypesDeclaration >> declarations: anObject [
	declarations := anObject
]

{ #category : #comparing }
PWBASTPrototypesDeclaration >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ declarations hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTPrototypesDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTPrototypesDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTPrototypesDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTPrototypesDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]
