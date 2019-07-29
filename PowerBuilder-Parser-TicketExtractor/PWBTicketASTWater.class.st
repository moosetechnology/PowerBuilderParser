Class {
	#name : #PWBTicketASTWater,
	#superclass : #Object,
	#instVars : [
		'water'
	],
	#category : #'PowerBuilder-Parser-TicketExtractor'
}

{ #category : #visiting }
PWBTicketASTWater >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBTicketASTWater: self
]

{ #category : #accessing }
PWBTicketASTWater >> water [
	^ water
]

{ #category : #accessing }
PWBTicketASTWater >> water: anObject [
	water := anObject
]
