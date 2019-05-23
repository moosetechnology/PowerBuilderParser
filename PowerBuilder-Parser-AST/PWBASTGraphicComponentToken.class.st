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
