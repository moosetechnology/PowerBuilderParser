Class {
	#name : #PWBASTDefaultVariable,
	#superclass : #Object,
	#instVars : [
		'defaultVariable'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTDefaultVariable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDefaultVariable: self
]

{ #category : #accessing }
PWBASTDefaultVariable >> defaultVariable [
	^ defaultVariable
]

{ #category : #accessing }
PWBASTDefaultVariable >> defaultVariable: anObject [
	defaultVariable := anObject
]
