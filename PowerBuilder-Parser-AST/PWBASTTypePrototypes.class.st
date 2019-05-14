Class {
	#name : #PWBASTTypePrototypes,
	#superclass : #Object,
	#instVars : [
		'declarations',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTTypePrototypes >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTTypePrototypes: self
]

{ #category : #accessing }
PWBASTTypePrototypes >> declarations [
	^ declarations
]

{ #category : #accessing }
PWBASTTypePrototypes >> declarations: anObject [
	declarations := anObject
]

{ #category : #accessing }
PWBASTTypePrototypes >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTTypePrototypes >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTTypePrototypes >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTTypePrototypes >> stopPosition: anObject [
	stopPosition := anObject
]
