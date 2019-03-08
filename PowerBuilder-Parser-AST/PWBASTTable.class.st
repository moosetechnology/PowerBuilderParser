Class {
	#name : #PWBASTTable,
	#superclass : #Object,
	#instVars : [
		'columns',
		'options'
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
