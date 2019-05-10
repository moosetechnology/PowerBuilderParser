Class {
	#name : #PWBASTArrayDesignation,
	#superclass : #Object,
	#instVars : [
		'arrayDesignation'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTArrayDesignation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArrayDesignation: self
]

{ #category : #accessing }
PWBASTArrayDesignation >> arrayDesignation [
	^ arrayDesignation
]

{ #category : #accessing }
PWBASTArrayDesignation >> arrayDesignation: anObject [
	arrayDesignation := anObject
]
