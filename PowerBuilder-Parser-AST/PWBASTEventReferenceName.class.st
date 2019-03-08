Class {
	#name : #PWBASTEventReferenceName,
	#superclass : #Object,
	#instVars : [
		'objectClass',
		'eventName',
		'arguments'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTEventReferenceName >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEventReferenceName: self
]

{ #category : #accessing }
PWBASTEventReferenceName >> arguments [
	^ arguments
]

{ #category : #accessing }
PWBASTEventReferenceName >> arguments: anObject [
	arguments := anObject
]

{ #category : #accessing }
PWBASTEventReferenceName >> eventName [
	^ eventName
]

{ #category : #accessing }
PWBASTEventReferenceName >> eventName: anObject [
	eventName := anObject
]

{ #category : #accessing }
PWBASTEventReferenceName >> objectClass [
	^ objectClass
]

{ #category : #accessing }
PWBASTEventReferenceName >> objectClass: anObject [
	objectClass := anObject
]
