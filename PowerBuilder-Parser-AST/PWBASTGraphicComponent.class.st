Class {
	#name : #PWBASTGraphicComponent,
	#superclass : #Object,
	#instVars : [
		'graphicComponentToken',
		'parameters'
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
