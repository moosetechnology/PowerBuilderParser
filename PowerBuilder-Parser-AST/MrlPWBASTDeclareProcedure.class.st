Class {
	#name : #MrlPWBASTDeclareProcedure,
	#superclass : #Object,
	#instVars : [
		'procedureName',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTDeclareProcedure >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ procedureName = anObject procedureName
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTDeclareProcedure >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTDeclareProcedure: self
]

{ #category : #comparing }
MrlPWBASTDeclareProcedure >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ procedureName hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTDeclareProcedure >> procedureName [
	^ procedureName
]

{ #category : #accessing }
MrlPWBASTDeclareProcedure >> procedureName: anObject [
	procedureName := anObject
]

{ #category : #accessing }
MrlPWBASTDeclareProcedure >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTDeclareProcedure >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTDeclareProcedure >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTDeclareProcedure >> stopPosition: anObject [
	stopPosition := anObject
]
