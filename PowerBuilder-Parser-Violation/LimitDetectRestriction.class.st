Class {
	#name : #LimitDetectRestriction,
	#superclass : #Object,
	#instVars : [
		'restrictionName'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #accessing }
LimitDetectRestriction >> restrictionName [
	^ restrictionName
]

{ #category : #accessing }
LimitDetectRestriction >> restrictionName: aString [
	restrictionName := aString
]
