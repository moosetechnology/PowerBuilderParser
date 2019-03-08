Class {
	#name : #PWBASTGotoStatement,
	#superclass : #Object,
	#instVars : [
		'identifier'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTGotoStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTGotoStatement: self
]

{ #category : #accessing }
PWBASTGotoStatement >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTGotoStatement >> identifier: anObject [
	identifier := anObject
]
