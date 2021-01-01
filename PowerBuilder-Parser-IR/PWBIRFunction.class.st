Class {
	#name : #PWBIRFunction,
	#superclass : #PWBIRComplexEntity,
	#category : #'PowerBuilder-Parser-IR'
}

{ #category : #mapping }
PWBIRFunction class >> mappingFamixClasses [
	^{ FamixPWBFunction . FamixPWBGlobalFunction . FamixPWBSubRoutine }
]

{ #category : #testing }
PWBIRFunction >> isBehavioural [
	^true
]
