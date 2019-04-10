Class {
	#name : #PWBASTCommonFile,
	#superclass : #Object,
	#instVars : [
		'fileStatements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTCommonFile >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCommonFile: self
]

{ #category : #accessing }
PWBASTCommonFile >> fileStatements [
	^ fileStatements
]

{ #category : #accessing }
PWBASTCommonFile >> fileStatements: anObject [
	fileStatements := anObject
]

{ #category : #accessing }
PWBASTCommonFile >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCommonFile >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCommonFile >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCommonFile >> stopPosition: anObject [
	stopPosition := anObject
]
