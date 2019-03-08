Class {
	#name : #PWBASTColumn,
	#superclass : #Object,
	#instVars : [
		'columnDefinition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTColumn >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTColumn: self
]

{ #category : #accessing }
PWBASTColumn >> columnDefinition [
	^ columnDefinition
]

{ #category : #accessing }
PWBASTColumn >> columnDefinition: anObject [
	columnDefinition := anObject
]
