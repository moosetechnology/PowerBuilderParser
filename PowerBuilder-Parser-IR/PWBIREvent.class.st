Class {
	#name : #PWBIREvent,
	#superclass : #PWBIRComplexEntity,
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #mapping }
PWBIREvent class >> defaultFamixClasses [
	^{ FamixPWBEvent }
]

{ #category : #'as yet unclassified' }
PWBIREvent >> increaseCyclomaticComplexity [
	self flag: #TODO
]
