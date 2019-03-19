Class {
	#name : #PWBASTDataWindowFile,
	#superclass : #Object,
	#instVars : [
		'fileStatements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTDataWindowFile >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDataWindowFile: self
]

{ #category : #accessing }
PWBASTDataWindowFile >> fileStatements [
	^ fileStatements
]

{ #category : #accessing }
PWBASTDataWindowFile >> fileStatements: anObject [
	fileStatements := anObject
]

{ #category : #accessing }
PWBASTDataWindowFile >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDataWindowFile >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDataWindowFile >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDataWindowFile >> stopPosition: anObject [
	stopPosition := anObject
]
