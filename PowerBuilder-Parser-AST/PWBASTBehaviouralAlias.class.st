Class {
	#name : #PWBASTBehaviouralAlias,
	#superclass : #Object,
	#instVars : [
		'alias',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTBehaviouralAlias >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTBehaviouralAlias: self
]

{ #category : #accessing }
PWBASTBehaviouralAlias >> alias [
	^ alias
]

{ #category : #accessing }
PWBASTBehaviouralAlias >> alias: anObject [
	alias := anObject
]

{ #category : #accessing }
PWBASTBehaviouralAlias >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTBehaviouralAlias >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTBehaviouralAlias >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTBehaviouralAlias >> stopPosition: anObject [
	stopPosition := anObject
]
