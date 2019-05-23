Class {
	#name : #PWBASTString,
	#superclass : #Object,
	#instVars : [
		'string',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTString >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTString: self
]

{ #category : #accessing }
PWBASTString >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTString >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTString >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTString >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTString >> string [
	^ string
]

{ #category : #accessing }
PWBASTString >> string: anObject [
	string := anObject
]
