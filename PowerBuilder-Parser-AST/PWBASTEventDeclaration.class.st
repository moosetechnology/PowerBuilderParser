Class {
	#name : #PWBASTEventDeclaration,
	#superclass : #Object,
	#instVars : [
		'eventReferenceName',
		'customCallStatement',
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTEventDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEventDeclaration: self
]

{ #category : #accessing }
PWBASTEventDeclaration >> customCallStatement [
	^ customCallStatement
]

{ #category : #accessing }
PWBASTEventDeclaration >> customCallStatement: anObject [
	customCallStatement := anObject
]

{ #category : #accessing }
PWBASTEventDeclaration >> eventReferenceName [
	^ eventReferenceName
]

{ #category : #accessing }
PWBASTEventDeclaration >> eventReferenceName: anObject [
	eventReferenceName := anObject
]

{ #category : #accessing }
PWBASTEventDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTEventDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTEventDeclaration >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTEventDeclaration >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTEventDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTEventDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]
