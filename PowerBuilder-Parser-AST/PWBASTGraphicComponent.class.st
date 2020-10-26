Class {
	#name : #PWBASTGraphicComponent,
	#superclass : #Object,
	#instVars : [
		'graphicComponentToken',
		'parameters',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTGraphicComponent >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ graphicComponentToken = anObject graphicComponentToken
		and: [ parameters = anObject parameters
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTGraphicComponent >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTGraphicComponent: self
]

{ #category : #accessing }
PWBASTGraphicComponent >> graphicComponentToken [
	^ graphicComponentToken
]

{ #category : #accessing }
PWBASTGraphicComponent >> graphicComponentToken: anObject [
	graphicComponentToken := anObject
]

{ #category : #comparing }
PWBASTGraphicComponent >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ graphicComponentToken hash
		bitXor:
			(parameters hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTGraphicComponent >> parameters [
	^ parameters
]

{ #category : #accessing }
PWBASTGraphicComponent >> parameters: anObject [
	parameters := anObject
]

{ #category : #accessing }
PWBASTGraphicComponent >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTGraphicComponent >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTGraphicComponent >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTGraphicComponent >> stopPosition: anObject [
	stopPosition := anObject
]
