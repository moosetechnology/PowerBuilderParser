Class {
	#name : #PWBASTAccess,
	#superclass : #Object,
	#instVars : [
		'variable',
		'arrayPosition',
		'attributeAccesses',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTAccess >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAccess: self
]

{ #category : #accessing }
PWBASTAccess >> arrayPosition [
	^ arrayPosition
]

{ #category : #accessing }
PWBASTAccess >> arrayPosition: anObject [
	arrayPosition := anObject
]

{ #category : #accessing }
PWBASTAccess >> attributeAccesses [
	^ attributeAccesses
]

{ #category : #accessing }
PWBASTAccess >> attributeAccesses: anObject [
	attributeAccesses := anObject
]

{ #category : #accessing }
PWBASTAccess >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTAccess >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTAccess >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTAccess >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTAccess >> variable [
	^ variable
]

{ #category : #accessing }
PWBASTAccess >> variable: anObject [
	variable := anObject
]
