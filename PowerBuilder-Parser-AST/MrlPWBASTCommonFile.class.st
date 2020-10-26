Class {
	#name : #MrlPWBASTCommonFile,
	#superclass : #Object,
	#instVars : [
		'fileStatements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTCommonFile >> = anObject [
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
MrlPWBASTCommonFile >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTCommonFile: self
]

{ #category : #accessing }
MrlPWBASTCommonFile >> fileStatements [
	^ fileStatements
]

{ #category : #accessing }
MrlPWBASTCommonFile >> fileStatements: anObject [
	fileStatements := anObject
]

{ #category : #comparing }
MrlPWBASTCommonFile >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ fileStatements hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTCommonFile >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTCommonFile >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTCommonFile >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTCommonFile >> stopPosition: anObject [
	stopPosition := anObject
]
