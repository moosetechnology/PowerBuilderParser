Class {
	#name : #PWBASTPrototypesDeclaration,
	#superclass : #Object,
	#instVars : [
		'declarations',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTPrototypesDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTPrototypesDeclaration: self
]

{ #category : #accessing }
PWBASTPrototypesDeclaration >> declarations [
	^ declarations
]

{ #category : #accessing }
PWBASTPrototypesDeclaration >> declarations: anObject [
	declarations := anObject
]

{ #category : #accessing }
PWBASTPrototypesDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTPrototypesDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTPrototypesDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTPrototypesDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]
