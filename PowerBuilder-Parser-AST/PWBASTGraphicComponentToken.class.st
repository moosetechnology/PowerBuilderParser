Class {
	#name : #PWBASTGraphicComponentToken,
	#superclass : #Object,
	#instVars : [
		'graphicComponentToken',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTGraphicComponentToken >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ graphicComponentToken = anObject graphicComponentToken
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTGraphicComponentToken >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTGraphicComponentToken: self
]

{ #category : #accessing }
PWBASTGraphicComponentToken >> graphicComponentToken [
	^ graphicComponentToken
]

{ #category : #accessing }
PWBASTGraphicComponentToken >> graphicComponentToken: anObject [
	graphicComponentToken := anObject
]

{ #category : #comparing }
PWBASTGraphicComponentToken >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ graphicComponentToken hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTGraphicComponentToken >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTGraphicComponentToken >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTGraphicComponentToken >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTGraphicComponentToken >> stopPosition: anObject [
	stopPosition := anObject
]
