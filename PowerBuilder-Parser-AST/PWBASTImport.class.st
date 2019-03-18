Class {
	#name : #PWBASTImport,
	#superclass : #Object,
	#instVars : [
		'formatType',
		'parameters',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTImport >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTImport: self
]

{ #category : #accessing }
PWBASTImport >> formatType [
	^ formatType
]

{ #category : #accessing }
PWBASTImport >> formatType: anObject [
	formatType := anObject
]

{ #category : #accessing }
PWBASTImport >> parameters [
	^ parameters
]

{ #category : #accessing }
PWBASTImport >> parameters: anObject [
	parameters := anObject
]

{ #category : #accessing }
PWBASTImport >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTImport >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTImport >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTImport >> stopPosition: anObject [
	stopPosition := anObject
]
