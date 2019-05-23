Class {
	#name : #PWBASTArrayDesignation,
	#superclass : #Object,
	#instVars : [
		'arrayDesignation',
		'startPosition',
		'stopPosition'
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

{ #category : #accessing }
PWBASTArrayDesignation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTArrayDesignation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTArrayDesignation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTArrayDesignation >> stopPosition: anObject [
	stopPosition := anObject
]
