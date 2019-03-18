Class {
	#name : #PWBASTSubroutineDefinition,
	#superclass : #Object,
	#instVars : [
		'subroutineSignature',
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTSubroutineDefinition >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSubroutineDefinition: self
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> subroutineSignature [
	^ subroutineSignature
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> subroutineSignature: anObject [
	subroutineSignature := anObject
]
