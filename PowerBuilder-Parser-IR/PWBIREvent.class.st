Class {
	#name : #PWBIREvent,
	#superclass : #PWBIRComplexEntity,
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #mapping }
PWBIREvent class >> defaultFamixClasses [
	^{ FamixPWBEvent }
]

{ #category : #accessing }
PWBIREvent >> increaseCyclomaticComplexity [
	self flag: #TODO
]
