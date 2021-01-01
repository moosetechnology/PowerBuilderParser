Class {
	#name : #PWBIRModelTest,
	#superclass : #TestCase,
	#instVars : [
		'model'
	],
	#category : #'PowerBuilder-Parser-IR-Tests'
}

{ #category : #running }
PWBIRModelTest >> setUp [
	model := PWBIRModel new
]

{ #category : #tests }
PWBIRModelTest >> testCreateIREntity [
	model createIR: PWBIRFunction named: 'fct' owner: nil.
	self assert: (model getAllIR: PWBIRFunction) size equals: 1
]

{ #category : #tests }
PWBIRModelTest >> testEnsureIREntity [
	model createIR: PWBIRFunction named: 'fct' owner: nil.
	self assert: (model getAllIR: PWBIRFunction) size equals: 1.

	model ensureIR: PWBIRFunction named: 'fct' owner: nil.
	self assert: (model getAllIR: PWBIRFunction) size equals: 1
]

{ #category : #tests }
PWBIRModelTest >> testGetAllFamixType [
	(model createIR: PWBIRFunction named: 'fct1' owner: nil)
		expectedFamixKinds: {FamixPWBFunction}.
	(model createIR: PWBIRFunction named: 'fct2' owner: nil)
		expectedFamixKinds: {FamixPWBGlobalFunction}.

	self assert: (model getAllIR: PWBIRFunction) size equals: 2.
	self assert: (model getAllFamixType: FamixPWBFunction) size equals: 1.
]

{ #category : #tests }
PWBIRModelTest >> testGetAllIRNamed [
	model createIR: PWBIRFunction named: 'fct1' owner: nil.
	model createIR: PWBIRFunction named: 'fct2' owner: nil.
	self assert: (model getAllIR: PWBIRFunction) size equals: 2.
	self assert: (model getAllIR: PWBIRFunction named: 'fct1') size equals: 1
]
