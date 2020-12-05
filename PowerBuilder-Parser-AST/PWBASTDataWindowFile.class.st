Class {
	#name : #PWBASTDataWindowFile,
	#superclass : #Object,
	#instVars : [
		'fileStatements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTDataWindowFile >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ fileStatements = anObject fileStatements
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTDataWindowFile >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDataWindowFile: self
]

{ #category : #accessing }
PWBASTDataWindowFile >> fileStatements [
	^ fileStatements
]

{ #category : #accessing }
PWBASTDataWindowFile >> fileStatements: anObject [
	fileStatements := anObject
]

{ #category : #comparing }
PWBASTDataWindowFile >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ fileStatements hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTDataWindowFile >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDataWindowFile >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDataWindowFile >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDataWindowFile >> stopPosition: anObject [
	stopPosition := anObject
]
