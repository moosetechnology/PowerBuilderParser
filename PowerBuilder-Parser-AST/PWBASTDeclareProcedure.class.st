Class {
	#name : #PWBASTDeclareProcedure,
	#superclass : #Object,
	#instVars : [
		'procedureName',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTDeclareProcedure >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDeclareProcedure: self
]

{ #category : #accessing }
PWBASTDeclareProcedure >> procedureName [
	^ procedureName
]

{ #category : #accessing }
PWBASTDeclareProcedure >> procedureName: anObject [
	procedureName := anObject
]

{ #category : #accessing }
PWBASTDeclareProcedure >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDeclareProcedure >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDeclareProcedure >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDeclareProcedure >> stopPosition: anObject [
	stopPosition := anObject
]
