Class {
	#name : #PWBASTEventAttribute,
	#superclass : #Object,
	#instVars : [
		'type',
		'attribute'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTEventAttribute >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEventAttribute: self
]

{ #category : #accessing }
PWBASTEventAttribute >> attribute [
	^ attribute
]

{ #category : #accessing }
PWBASTEventAttribute >> attribute: anObject [
	attribute := anObject
]

{ #category : #accessing }
PWBASTEventAttribute >> type [
	^ type
]

{ #category : #accessing }
PWBASTEventAttribute >> type: anObject [
	type := anObject
]
