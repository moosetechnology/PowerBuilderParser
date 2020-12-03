Class {
	#name : #MrlPWBASTBehaviouralAlias,
	#superclass : #Object,
	#instVars : [
		'alias',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTBehaviouralAlias >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ alias = anObject alias
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #accessing }
MrlPWBASTBehaviouralAlias >> alias [
	^ alias
]

{ #category : #accessing }
MrlPWBASTBehaviouralAlias >> alias: anObject [
	alias := anObject
]

{ #category : #comparing }
MrlPWBASTBehaviouralAlias >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ alias hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTBehaviouralAlias >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTBehaviouralAlias >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTBehaviouralAlias >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTBehaviouralAlias >> stopPosition: anObject [
	stopPosition := anObject
]
