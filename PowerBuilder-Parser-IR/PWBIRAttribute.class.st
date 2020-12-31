Class {
	#name : #PWBIRAttribute,
	#superclass : #PWBIRNamedEntity,
	#instVars : [
		'declaredType'
	],
	#category : #'PowerBuilder-Parser-IR'
}

{ #category : #mapping }
PWBIRAttribute class >> mappingFamixClasses [
	^{ FamixPWBAttribute . FamixPWBInstanceVariable }
]

{ #category : #accessing }
PWBIRAttribute >> declaredType [
	^ declaredType
]

{ #category : #accessing }
PWBIRAttribute >> declaredType: anObject [
	declaredType := anObject
]
