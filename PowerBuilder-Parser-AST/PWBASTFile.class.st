Class {
	#name : #PWBASTFile,
	#superclass : #Object,
	#instVars : [
		'content',
		'startPosition',
		'stopPosition',
		'fileName'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTFile >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFile: self
]

{ #category : #accessing }
PWBASTFile >> content [
	^ content
]

{ #category : #accessing }
PWBASTFile >> content: anObject [
	content := anObject
]

{ #category : #accessing }
PWBASTFile >> fileName [
	^ fileName
]

{ #category : #accessing }
PWBASTFile >> fileName: anObject [
	fileName := anObject
]

{ #category : #accessing }
PWBASTFile >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTFile >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTFile >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTFile >> stopPosition: anObject [
	stopPosition := anObject
]
