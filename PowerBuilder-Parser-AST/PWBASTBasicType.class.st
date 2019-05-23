Class {
	#name : #PWBASTBasicType,
	#superclass : #Object,
	#instVars : [
		'basicType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTBasicType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTBasicType: self
]

{ #category : #accessing }
PWBASTBasicType >> basicType [
	^ basicType
]

{ #category : #accessing }
PWBASTBasicType >> basicType: anObject [
	basicType := anObject
]

{ #category : #accessing }
PWBASTBasicType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTBasicType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTBasicType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTBasicType >> stopPosition: anObject [
	stopPosition := anObject
]
