Class {
	#name : #PWBSimpleImporter,
	#superclass : #PWBFamixImporter,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #running }
PWBSimpleImporter >> basicRun [
	super basicRun.
	^ visitor
]

{ #category : #running }
PWBSimpleImporter >> setUp [
	preprocessedMap := Dictionary new.
	visitor := PWBViolationDetectVisitor  new.

]
