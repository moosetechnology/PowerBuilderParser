Class {
	#name : #PWBASTGraphicComponentToken,
	#superclass : #Object,
	#instVars : [
		'graphicComponentToken'
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
