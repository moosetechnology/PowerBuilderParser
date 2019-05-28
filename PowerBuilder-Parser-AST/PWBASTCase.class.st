Class {
	#name : #PWBASTCase,
	#superclass : #Object,
	#instVars : [
		'case',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTCase >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCase: self
]

{ #category : #accessing }
PWBASTCase >> case [
	^ case
]

{ #category : #accessing }
PWBASTCase >> case: anObject [
	case := anObject
]

{ #category : #accessing }
PWBASTCase >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCase >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCase >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCase >> stopPosition: anObject [
	stopPosition := anObject
]
