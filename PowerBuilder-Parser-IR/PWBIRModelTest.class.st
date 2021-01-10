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
PWBIRModelTest >> testAnyOne [
	self should: [ model anyOne ] raise: Error.

	model createIR: PWBIRType named: 'typ1' owner: nil.
	self assert: model anyOne name equals: 'typ1'.

]

{ #category : #tests }
PWBIRModelTest >> testCreateIREntity [
	model createIR: PWBIRFunction named: 'fct' owner: nil.
	self assert: (model getAllIR: PWBIRFunction) size equals: 1
]

{ #category : #tests }
PWBIRModelTest >> testEnsureIREntity [
	model irStub: PWBIRFunction named: 'fct'.
	self assert: (model getAllIR: PWBIRFunction) size equals: 1.

	model irStub: PWBIRFunction named: 'fct'.
	self assert: (model getAllIR: PWBIRFunction) size equals: 1
]

{ #category : #tests }
PWBIRModelTest >> testEntityMembers [
	| ir |
	ir := model createIR: PWBIRType named: 'typ1' owner: nil.
	
	self assert: (model getAllIR: PWBIRType) size equals: 1.
	self assert: ir members size equals: 0.
	
	
	model createIR: PWBIRType named: 'typ2' owner: ir.

	self assert: (model getAllIR: PWBIRType) size equals: 2.
	self assert: ir members size equals: 1.

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

{ #category : #tests }
PWBIRModelTest >> testIRModelScope [
	| ir referencesSolver |
	ir := model createIR: PWBIRType named: 'typ1' owner: nil.
	model createIR: PWBIRType named: 'typ2' owner: ir.

	referencesSolver := SRReferencesSolver new.

	referencesSolver pushIRModelAsScope: model.
	self should: [ referencesSolver currentEntity ] raise: SRNoCurrentEntityAvailable.
	self assert: referencesSolver topScopeReachableEntities size equals: 1.
	self assert: referencesSolver topScopeReachableEntities anyOne name equals: 'typ1'.

	referencesSolver pushEntityAsScope: ir.

	self assert: referencesSolver topScopeReachableEntities size equals: 1.
	self assert: referencesSolver topScopeReachableEntities anyOne name equals: 'typ2'

]

{ #category : #tests }
PWBIRModelTest >> testSize [
	self assert: model size equals: 0.

	model createIR: PWBIRType named: 'typ1' owner: nil.
	self assert: model size equals: 1.

	model createIR: PWBIRType named: 'typ2' owner: nil.
	self assert: model size equals: 2.

	model createIR: PWBIRFunction named: 'fct' owner: nil.
	model createIR: PWBIRValueHolder named: 'var' owner: nil.
	self assert: model size equals: 4.

]

{ #category : #tests }
PWBIRModelTest >> testToFamixFunctionWithParameterAndVariable [
	| ir fmxFct famixModel |
	ir := model ensureIRForFamixClass: FamixPWBFunction named: 'fct' owner: nil.
	model ensureIRForFamixClass: FamixPWBParameter named: 'param' owner: ir.
	model ensureIRForFamixClass: FamixPWBVariable named: 'var' owner: ir.

	famixModel := model toFamix.
	
	self assert: famixModel size equals: 2 + 3. "userobject, datawindow + 3"

	self assert: (famixModel allWithType: FamixPWBFunction) size equals: 1.

	fmxFct := (famixModel allWithType: FamixPWBFunction) anyOne.
	self assert: fmxFct name equals: 'fct'.
	self assert: fmxFct isStub.

	self assert: fmxFct parameters size equals: 1.
	self assert: fmxFct parameters anyOne name equals: 'param'.
	self deny: fmxFct parameters anyOne isStub.

	self assert: fmxFct variables size equals: 1.
	self assert: fmxFct variables anyOne name equals: 'var'.
	self deny: fmxFct variables anyOne isStub.

]
