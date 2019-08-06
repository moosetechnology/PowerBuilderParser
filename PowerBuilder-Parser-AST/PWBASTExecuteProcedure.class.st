Class {
	#name : #PWBASTExecuteProcedure,
	#superclass : #Object,
	#instVars : [
		'procedureName',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTExecuteProcedure >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTExecuteProcedure: self
]

{ #category : #accessing }
PWBASTExecuteProcedure >> procedureName [
	^ procedureName
]

{ #category : #accessing }
PWBASTExecuteProcedure >> procedureName: anObject [
	procedureName := anObject
]

{ #category : #accessing }
PWBASTExecuteProcedure >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTExecuteProcedure >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTExecuteProcedure >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTExecuteProcedure >> stopPosition: anObject [
	stopPosition := anObject
]
