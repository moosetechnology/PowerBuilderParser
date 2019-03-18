Class {
	#name : #PWBASTSpecialStatement,
	#superclass : #Object,
	#instVars : [
		'specialStatement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTSpecialStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSpecialStatement: self
]

{ #category : #accessing }
PWBASTSpecialStatement >> specialStatement [
	^ specialStatement
]

{ #category : #accessing }
PWBASTSpecialStatement >> specialStatement: anObject [
	specialStatement := anObject
]

{ #category : #accessing }
PWBASTSpecialStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSpecialStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSpecialStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSpecialStatement >> stopPosition: anObject [
	stopPosition := anObject
]
