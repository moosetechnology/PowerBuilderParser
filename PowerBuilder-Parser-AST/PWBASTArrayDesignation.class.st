Class {
	#name : #PWBASTArrayDesignation,
	#superclass : #Object,
	#instVars : [
		'arrayDesignation',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTArrayDesignation >> = anObject [
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
PWBASTArrayDesignation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArrayDesignation: self
]

{ #category : #accessing }
PWBASTArrayDesignation >> arrayDesignation [
	^ arrayDesignation
]

{ #category : #accessing }
PWBASTArrayDesignation >> arrayDesignation: anObject [
	arrayDesignation := anObject
]

{ #category : #comparing }
PWBASTArrayDesignation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ arrayDesignation hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTArrayDesignation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTArrayDesignation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTArrayDesignation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTArrayDesignation >> stopPosition: anObject [
	stopPosition := anObject
]
