Class {
	#name : #PWBIRFunction,
	#superclass : #PWBIRComplexEntity,
	#instVars : [
		'declaredType'
	],
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #mapping }
PWBIRFunction class >> mappingFamixClasses [
	^{ FamixPWBFunction . FamixPWBGlobalFunction . FamixPWBSubRoutine }
]

{ #category : #accessing }
PWBIRFunction >> declaredType [
	^ declaredType
]

{ #category : #accessing }
PWBIRFunction >> declaredType: anObject [
	declaredType := anObject
]

{ #category : #'as yet unclassified' }
PWBIRFunction >> increaseCyclomaticComplexity [
	self flag: #TODO
]

{ #category : #testing }
PWBIRFunction >> isBehavioural [
	^true
]
