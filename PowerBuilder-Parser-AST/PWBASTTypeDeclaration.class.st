Class {
	#name : #PWBASTTypeDeclaration,
	#superclass : #Object,
	#instVars : [
		'type',
		'fromClause',
		'eventType',
		'withinClause',
		'descriptor',
		'attributes'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTTypeDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTTypeDeclaration: self
]

{ #category : #accessing }
PWBASTTypeDeclaration >> attributes [
	^ attributes
]

{ #category : #accessing }
PWBASTTypeDeclaration >> attributes: anObject [
	attributes := anObject
]

{ #category : #accessing }
PWBASTTypeDeclaration >> descriptor [
	^ descriptor
]

{ #category : #accessing }
PWBASTTypeDeclaration >> descriptor: anObject [
	descriptor := anObject
]

{ #category : #accessing }
PWBASTTypeDeclaration >> eventType [
	^ eventType
]

{ #category : #accessing }
PWBASTTypeDeclaration >> eventType: anObject [
	eventType := anObject
]

{ #category : #accessing }
PWBASTTypeDeclaration >> fromClause [
	^ fromClause
]

{ #category : #accessing }
PWBASTTypeDeclaration >> fromClause: anObject [
	fromClause := anObject
]

{ #category : #accessing }
PWBASTTypeDeclaration >> type [
	^ type
]

{ #category : #accessing }
PWBASTTypeDeclaration >> type: anObject [
	type := anObject
]

{ #category : #accessing }
PWBASTTypeDeclaration >> withinClause [
	^ withinClause
]

{ #category : #accessing }
PWBASTTypeDeclaration >> withinClause: anObject [
	withinClause := anObject
]
