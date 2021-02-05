Class {
	#name : #PWBIRModelToFamixTest,
	#superclass : #TestCase,
	#instVars : [
		'model'
	],
	#category : #'PowerBuilder-Parser-IR-Tests'
}

{ #category : #running }
PWBIRModelToFamixTest >> setUp [
	model := PWBIRModel new
]

{ #category : #tests }
PWBIRModelToFamixTest >> testEntityToFamixExpectedKindNotWishedType [
	| ir |
	ir := model ensureIRForFamixClass: FamixPWBFunction named: 'fct' owner: nil.
	ir toFamix.

	self should: [ ir toFamix: FamixPWBRoutine ] raise: PWBIRWrongFamixClass.

]

{ #category : #tests }
PWBIRModelToFamixTest >> testEntityToFamixExpectedKindSuperclassOfGivenType [
	| ir |
	ir := model ensureIRForFamixClass: FamixPWBUserObject named: 'uo' owner: nil.

	self assert: (ir toFamix: FamixPWBmajorObject) class equals: FamixPWBUserObject.

]

{ #category : #tests }
PWBIRModelToFamixTest >> testEntityToFamixPreviousTypeNotGivenType [
	| ir |
	ir := model ensureIRForFamixClass: FamixPWBFunction named: 'fct' owner: nil.
	ir toFamix.

	self should: [ ir toFamix: FamixPWBRoutine ] raise: PWBIRWrongFamixClass.

]

{ #category : #tests }
PWBIRModelToFamixTest >> testToFamixFunctionWithParameterAndVariable [
	| ir fmx |
	ir := model ensureIRForFamixClass: FamixPWBFunction named: 'fct' owner: nil.
	model ensureIRForFamixClass: FamixPWBParameter named: 'param' owner: ir.
	model ensureIRForFamixClass: FamixPWBLocalVariable named: 'var' owner: ir.
	model toFamix.

	self assert: model famixModel size equals: 2 + 3. "userobject, datawindow + 3"

	self assert: (model famixModel allWithType: FamixPWBFunction) size equals: 1.

	fmx := (model famixModel allWithType: FamixPWBFunction) anyOne.
	self assert: fmx name equals: 'fct'.
	self assert: fmx isStub.

	self assert: fmx parameters size equals: 1.
	self assert: fmx parameters anyOne name equals: 'param'.
	self deny: fmx parameters anyOne isStub.

	self assert: fmx variables size equals: 1.
	self assert: fmx variables anyOne name equals: 'var'.
	self deny: fmx variables anyOne isStub.

]

{ #category : #tests }
PWBIRModelToFamixTest >> testToFamixTypeFromExpectedKind [
	| ir fmx |
	ir := model ensureIRForFamixClass: FamixPWBUserObject named: 'uo' owner: nil.
	model ensureIRForFamixClass: FamixPWBAttribute named: 'att1' owner: ir.
	model ensureIRForFamixClass: FamixPWBAttribute named: 'att2' owner: ir.
	model toFamix.
	
	self assert: model famixModel size equals: 2 + 3. "userobject, datawindow + 3"

	self assert: (model famixModel allWithType: FamixPWBUserObject) size equals: 1 + 1.  "userobject + 1"

	fmx := model famixModel entityNamed: 'uo'.
	self assert: fmx class equals: FamixPWBUserObject.
	self assert: fmx isStub.

	self assert: fmx attributes size equals: 2.
	self assert: (fmx attributes allSatisfy: [ :att | att name beginsWith: 'att' ]).
	self assert: (fmx attributes noneSatisfy: [ :att | att isStub ]).

]

{ #category : #tests }
PWBIRModelToFamixTest >> testToFamixValueHolderNoExpectedKind [
	| fmx |
	model irStub: PWBIRValueHolder named: 'var'.
	model toFamix.

	self assert: model famixModel size equals: 2 + 1. "userobject, datawindow + 1"
	self assert: (model famixModel allWithType: FamixPWBVariable) size equals: 1.

	fmx := (model famixModel allWithType: FamixPWBVariable) anyOne.
	self assert: fmx name equals: 'var'.
	self assert: fmx isStub.

]

{ #category : #tests }
PWBIRModelToFamixTest >> testToFamixValueHolderSeveralExpectedKind [
	| fmx |
	(model irStub: PWBIRValueHolder named: 'var')
		expectedFamixKinds: { FamixPWBGlobalVariable . FamixPWBInstanceVariable }.
	model toFamix.

	self assert: model famixModel size equals: 2 + 1. "userobject, datawindow + 1"
	self assert: (model famixModel allWithType: FamixPWBGlobalVariable) size equals: 1.

	fmx := (model famixModel allWithType: FamixPWBGlobalVariable) anyOne.
	self assert: fmx name equals: 'var'.
	self assert: fmx isStub.

]

{ #category : #tests }
PWBIRModelToFamixTest >> testUserobjectFunctionMemberToFamixMethod [
	| typ |
	typ := model ensureIRForFamixClass: FamixPWBUserObject named: 'typ' owner: nil.
	model ensureIR: PWBIRFunction named: 'mth' owner: typ.
	
	typ := typ toFamix.

	self assert: typ methods size equals: 1.
	self assert: typ methods anyOne name equals: 'mth'.
	self assert: typ methods anyOne parentType equals: typ.
	

]

{ #category : #tests }
PWBIRModelToFamixTest >> testUserobjectVarMemberToFamixAttribute [
	| typ |
	typ := model ensureIRForFamixClass: FamixPWBUserObject named: 'typ' owner: nil.
	model ensureIR: PWBIRValueHolder named: 'att' owner: typ.
	
	typ := typ toFamix.

	self assert: typ attributes size equals: 1.
	self assert: typ attributes anyOne name equals: 'att'.
	self assert: typ attributes anyOne parentType equals: typ.
	

]
