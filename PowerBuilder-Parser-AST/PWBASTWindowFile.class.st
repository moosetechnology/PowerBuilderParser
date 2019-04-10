Class {
	#name : #PWBASTWindowFile,
	#superclass : #Object,
	#instVars : [
		'commonFile',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTWindowFile >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTWindowFile: self
]

{ #category : #accessing }
PWBASTWindowFile >> commonFile [
	^ commonFile
]

{ #category : #accessing }
PWBASTWindowFile >> commonFile: anObject [
	commonFile := anObject
]

{ #category : #accessing }
PWBASTWindowFile >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTWindowFile >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTWindowFile >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTWindowFile >> stopPosition: anObject [
	stopPosition := anObject
]
