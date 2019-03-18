Class {
	#name : #PWBASTTable,
	#superclass : #Object,
	#instVars : [
		'columns',
		'options',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTTable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTTable: self
]

{ #category : #accessing }
PWBASTTable >> columns [
	^ columns
]

{ #category : #accessing }
PWBASTTable >> columns: anObject [
	columns := anObject
]

{ #category : #accessing }
PWBASTTable >> options [
	^ options
]

{ #category : #accessing }
PWBASTTable >> options: anObject [
	options := anObject
]

{ #category : #accessing }
PWBASTTable >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTTable >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTTable >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTTable >> stopPosition: anObject [
	stopPosition := anObject
]
