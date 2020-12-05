Class {
	#name : #PWBASTCommonFile,
	#superclass : #Object,
	#instVars : [
		'fileStatements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTCommonFile >> = anObject [
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
PWBASTCommonFile >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCommonFile: self
]

{ #category : #accessing }
PWBASTCommonFile >> fileStatements [
	^ fileStatements
]

{ #category : #accessing }
PWBASTCommonFile >> fileStatements: anObject [
	fileStatements := anObject
]

{ #category : #comparing }
PWBASTCommonFile >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ fileStatements hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTCommonFile >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCommonFile >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCommonFile >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCommonFile >> stopPosition: anObject [
	stopPosition := anObject
]
