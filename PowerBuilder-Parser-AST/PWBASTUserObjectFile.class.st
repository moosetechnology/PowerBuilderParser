Class {
	#name : #PWBASTUserObjectFile,
	#superclass : #Object,
	#instVars : [
		'fileStatements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTUserObjectFile >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTUserObjectFile: self
]

{ #category : #accessing }
PWBASTUserObjectFile >> fileStatements [
	^ fileStatements
]

{ #category : #accessing }
PWBASTUserObjectFile >> fileStatements: anObject [
	fileStatements := anObject
]

{ #category : #accessing }
PWBASTUserObjectFile >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTUserObjectFile >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTUserObjectFile >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTUserObjectFile >> stopPosition: anObject [
	stopPosition := anObject
]
