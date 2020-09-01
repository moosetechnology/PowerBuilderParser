Class {
	#name : #MrlPWBASTArrayDesignation,
	#superclass : #Object,
	#instVars : [
		'arrayDesignation',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTArrayDesignation >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ arrayDesignation = anObject arrayDesignation
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTArrayDesignation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTArrayDesignation: self
]

{ #category : #accessing }
MrlPWBASTArrayDesignation >> arrayDesignation [
	^ arrayDesignation
]

{ #category : #accessing }
MrlPWBASTArrayDesignation >> arrayDesignation: anObject [
	arrayDesignation := anObject
]

{ #category : #comparing }
MrlPWBASTArrayDesignation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ arrayDesignation hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTArrayDesignation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTArrayDesignation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTArrayDesignation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTArrayDesignation >> stopPosition: anObject [
	stopPosition := anObject
]
