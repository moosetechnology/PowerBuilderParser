Class {
	#name : #PWBASTArgument,
	#superclass : #Object,
	#instVars : [
		'type',
		'identifier',
		'arrayWithSize',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTArgument >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArgument: self
]

{ #category : #accessing }
PWBASTArgument >> arrayWithSize [
	^ arrayWithSize
]

{ #category : #accessing }
PWBASTArgument >> arrayWithSize: anObject [
	arrayWithSize := anObject
]

{ #category : #accessing }
PWBASTArgument >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTArgument >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTArgument >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTArgument >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTArgument >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTArgument >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTArgument >> type [
	^ type
]

{ #category : #accessing }
PWBASTArgument >> type: anObject [
	type := anObject
]
