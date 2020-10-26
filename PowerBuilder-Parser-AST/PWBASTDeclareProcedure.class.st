Class {
	#name : #PWBASTDeclareProcedure,
	#superclass : #Object,
	#instVars : [
		'procedureName',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTDeclareProcedure >> = anObject [
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
PWBASTDeclareProcedure >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDeclareProcedure: self
]

{ #category : #comparing }
PWBASTDeclareProcedure >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ procedureName hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTDeclareProcedure >> procedureName [
	^ procedureName
]

{ #category : #accessing }
PWBASTDeclareProcedure >> procedureName: anObject [
	procedureName := anObject
]

{ #category : #accessing }
PWBASTDeclareProcedure >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDeclareProcedure >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDeclareProcedure >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDeclareProcedure >> stopPosition: anObject [
	stopPosition := anObject
]
