Class {
	#name : #PWBASTTable,
	#superclass : #Object,
	#instVars : [
		'columns',
		'options',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTTable >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ columns = anObject columns
		and: [ options = anObject options
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTTable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTTable: self
]

{ #category : #accessing }
PWBASTTable >> columns [
	^ columns
]

{ #category : #accessing }
PWBASTTable >> columns: anObject [
	columns := anObject
]

{ #category : #comparing }
PWBASTTable >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ columns hash
		bitXor: (options hash bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTTable >> options [
	^ options
]

{ #category : #accessing }
PWBASTTable >> options: anObject [
	options := anObject
]

{ #category : #accessing }
PWBASTTable >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTTable >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTTable >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTTable >> stopPosition: anObject [
	stopPosition := anObject
]
