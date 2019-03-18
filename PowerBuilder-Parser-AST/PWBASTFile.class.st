Class {
	#name : #PWBASTFile,
	#superclass : #Object,
	#instVars : [
		'fileStatements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTFile >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFile: self
]

{ #category : #accessing }
PWBASTFile >> fileStatements [
	^ fileStatements
]

{ #category : #accessing }
PWBASTFile >> fileStatements: anObject [
	fileStatements := anObject
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
