Class {
	#name : #PWBASTBehaviouralAlias,
	#superclass : #Object,
	#instVars : [
		'alias',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTBehaviouralAlias >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ alias = anObject alias
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTBehaviouralAlias >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTBehaviouralAlias: self
]

{ #category : #accessing }
PWBASTBehaviouralAlias >> alias [
	^ alias
]

{ #category : #accessing }
PWBASTBehaviouralAlias >> alias: anObject [
	alias := anObject
]

{ #category : #comparing }
PWBASTBehaviouralAlias >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ alias hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTBehaviouralAlias >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTBehaviouralAlias >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTBehaviouralAlias >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTBehaviouralAlias >> stopPosition: anObject [
	stopPosition := anObject
]
