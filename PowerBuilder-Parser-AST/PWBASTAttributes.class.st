Class {
	#name : #PWBASTAttributes,
	#superclass : #Object,
	#instVars : [
		'attributeses',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTAttributes >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAttributes: self
]

{ #category : #accessing }
PWBASTAttributes >> attributeses [
	^ attributeses
]

{ #category : #accessing }
PWBASTAttributes >> attributeses: anObject [
	attributeses := anObject
]

{ #category : #accessing }
PWBASTAttributes >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTAttributes >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTAttributes >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTAttributes >> stopPosition: anObject [
	stopPosition := anObject
]
