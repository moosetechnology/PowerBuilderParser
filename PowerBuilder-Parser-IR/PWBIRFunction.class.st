Class {
	#name : #PWBIRFunction,
	#superclass : #PWBIRComplexEntity,
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #mapping }
PWBIRFunction class >> mappingFamixClasses [
	^{ FamixPWBFunction . FamixPWBGlobalFunction . FamixPWBSubRoutine }
]

{ #category : #testing }
PWBIRFunction >> isBehavioural [
	^true
]
