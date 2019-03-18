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
