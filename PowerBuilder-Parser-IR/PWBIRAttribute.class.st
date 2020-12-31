Class {
	#name : #PWBIRAttribute,
	#superclass : #PWBIRNamedEntity,
	#instVars : [
		'declaredType'
	],
	#category : #'PowerBuilder-Parser-IR'
}

{ #category : #accessing }
PWBIRAttribute >> declaredType [
	^ declaredType
]

{ #category : #accessing }
PWBIRAttribute >> declaredType: anObject [
	declaredType := anObject
]
