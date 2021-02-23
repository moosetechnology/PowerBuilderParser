Class {
	#name : #PWBIRModelToFamixTest,
	#superclass : #TestCase,
	#instVars : [
		'irModel',
		'fmxModel'
	],
	#category : #'PowerBuilder-Parser-IR-Tests'
}

{ #category : #running }
PWBIRModelToFamixTest >> setUp [
	irModel := PWBIRModel new.
	fmxModel := FamixPWBModel new.
	irModel famixModel: fmxModel 
]

{ #category : #'tests-expectedKind' }
PWBIRModelToFamixTest >> testEntityToFamixExpectedKindNotWishedType [
	| ir |
	ir := irModel ensureIRForFamixClass: FamixPWBFunction named: 'fct' owner: nil.
	ir toFamix: fmxModel.

	self should: [ ir toFamix: fmxModel class: FamixPWBRoutine ] raise: PWBIRWrongFamixClass.

]

{ #category : #'tests-expectedKind' }
PWBIRModelToFamixTest >> testEntityToFamixExpectedKindSuperclassOfGivenType [
	| ir |
	ir := irModel ensureIRForFamixClass: FamixPWBUserObject named: 'uo' owner: nil.

	self assert: (ir toFamix: fmxModel class: FamixPWBmajorObject) class equals: FamixPWBUserObject.

]

{ #category : #'tests-invocations' }
PWBIRModelToFamixTest >> testFunctionDependencyFunctionToFamixInvocation [
	"function calling a function"
	| caller callee invok |
	caller := irModel ensureIRForFamixClass: FamixPWBFunction named: 'caller' owner: nil.
	callee := irModel ensureIRForFamixClass: FamixPWBFunction named: 'callee' owner: nil.
	caller addDependency: callee.

	irModel toFamix.

	self assert: fmxModel allInvocations size equals: 1.
	invok := fmxModel allInvocations anyOne.

	self assert: invok sender equals: (caller famixEntity).
	self assert: invok candidates size equals: 1.
	self assert: invok candidates anyOne equals:(callee famixEntity).

	self assert: caller famixEntity outgoingInvocations size equals: 1.
	self assert: caller famixEntity incomingInvocations size equals: 0.
	
	self assert: callee famixEntity incomingInvocations size equals: 1.
	self assert: callee famixEntity outgoingInvocations size equals: 0.

]

{ #category : #'tests-invocations' }
PWBIRModelToFamixTest >> testFunctionDependencySubRoutineToFamixInvocation [
	"function calling a subroutine"
	| caller callee invok |
	caller := irModel ensureIRForFamixClass: FamixPWBFunction named: 'caller' owner: nil.
	callee := irModel ensureIRForFamixClass: FamixPWBSubRoutine named: 'callee' owner: nil.
	caller addDependency: callee.

	irModel toFamix.

	self assert: fmxModel allInvocations size equals: 1.
	invok := fmxModel allInvocations anyOne.

	self assert: invok sender equals: (caller famixEntity).
	self assert: invok candidates size equals: 1.
	self assert: invok candidates anyOne equals:(callee famixEntity).

	self assert: caller famixEntity outgoingInvocations size equals: 1.
	self assert: caller famixEntity incomingInvocations size equals: 0.
	
	self assert: callee famixEntity incomingInvocations size equals: 1.
	self assert: callee famixEntity outgoingInvocations size equals: 0.

]

{ #category : #'tests-invocations' }
PWBIRModelToFamixTest >> testSubRoutineDependencyFunctionToFamixInvocation [
	"subroutine calling a function"
	| caller callee invok |
	caller := irModel ensureIRForFamixClass: FamixPWBSubRoutine named: 'caller' owner: nil.
	callee := irModel ensureIRForFamixClass: FamixPWBFunction named: 'callee' owner: nil.
	caller addDependency: callee.

	irModel toFamix.

	self assert: fmxModel allInvocations size equals: 1.
	invok := fmxModel allInvocations anyOne.

	self assert: invok sender equals: (caller famixEntity).
	self assert: invok candidates size equals: 1.
	self assert: invok candidates anyOne equals:(callee famixEntity).

	self assert: caller famixEntity outgoingInvocations size equals: 1.
	self assert: caller famixEntity incomingInvocations size equals: 0.
	
	self assert: callee famixEntity incomingInvocations size equals: 1.
	self assert: callee famixEntity outgoingInvocations size equals: 0.

]

{ #category : #'tests-members' }
PWBIRModelToFamixTest >> testToFamixFunctionWithParameterAndVariable [
	| ir fmx |
	ir := irModel ensureIRForFamixClass: FamixPWBFunction named: 'fct' owner: nil.
	irModel ensureIRForFamixClass: FamixPWBParameter named: 'param' owner: ir.
	irModel ensureIRForFamixClass: FamixPWBLocalVariable named: 'var' owner: ir.
	irModel toFamix.

	self assert: irModel famixModel size equals: 3.

	self assert: (irModel famixModel allWithType: FamixPWBFunction) size equals: 1.

	fmx := (irModel famixModel allWithType: FamixPWBFunction) anyOne.
	self assert: fmx name equals: 'fct'.
	self assert: fmx isStub.

	self assert: fmx parameters size equals: 1.
	self assert: fmx parameters anyOne name equals: 'param'.
	self deny: fmx parameters anyOne isStub.

	self assert: fmx variables size equals: 1.
	self assert: fmx variables anyOne name equals: 'var'.
	self deny: fmx variables anyOne isStub.

]

{ #category : #'tests-expectedKind' }
PWBIRModelToFamixTest >> testToFamixTypeFromExpectedKind [
	| ir fmx |
	ir := irModel ensureIRForFamixClass: FamixPWBUserObject named: 'uo' owner: nil.
	irModel ensureIRForFamixClass: FamixPWBAttribute named: 'att1' owner: ir.
	irModel ensureIRForFamixClass: FamixPWBAttribute named: 'att2' owner: ir.
	irModel toFamix.
	
	self assert: irModel famixModel size equals: 3.

	self assert: (irModel famixModel allWithType: FamixPWBUserObject) size equals: 1.

	fmx := irModel famixModel entityNamed: 'uo'.
	self assert: fmx class equals: FamixPWBUserObject.
	self assert: fmx isStub.

	self assert: fmx attributes size equals: 2.
	self assert: (fmx attributes allSatisfy: [ :att | att name beginsWith: 'att' ]).
	self assert: (fmx attributes noneSatisfy: [ :att | att isStub ]).

]

{ #category : #'tests-expectedKind' }
PWBIRModelToFamixTest >> testToFamixValueHolderNoExpectedKind [
	| fmx |
	irModel irStub: PWBIRValueHolder named: 'var'.
	irModel toFamix.

	self assert: irModel famixModel size equals: 1.
	self assert: (irModel famixModel allWithType: FamixPWBVariable) size equals: 1.

	fmx := (irModel famixModel allWithType: FamixPWBVariable) anyOne.
	self assert: fmx name equals: 'var'.
	self assert: fmx isStub.

]

{ #category : #'tests-expectedKind' }
PWBIRModelToFamixTest >> testToFamixValueHolderSeveralExpectedKind [
	| fmx |
	(irModel irStub: PWBIRValueHolder named: 'var')
		expectedFamixKinds: { FamixPWBGlobalVariable . FamixPWBInstanceVariable }.
	irModel toFamix.

	self assert: irModel famixModel size equals: 1.
	self assert: (irModel famixModel allWithType: FamixPWBGlobalVariable) size equals: 1.

	fmx := (irModel famixModel allWithType: FamixPWBGlobalVariable) anyOne.
	self assert: fmx name equals: 'var'.
	self assert: fmx isStub.

]

{ #category : #'tests-members' }
PWBIRModelToFamixTest >> testUserObjectMemberFunctionToFamixMethod [
	| typ |
	typ := irModel ensureIRForFamixClass: FamixPWBUserObject named: 'typ' owner: nil.
	irModel ensureIR: PWBIRFunction named: 'mth' owner: typ.
	
	typ := typ toFamix: fmxModel.

	self assert: typ methods size equals: 1.
	self assert: typ methods anyOne name equals: 'mth'.
	self assert: typ methods anyOne parentType equals: typ.
	

]

{ #category : #'tests-members' }
PWBIRModelToFamixTest >> testUserObjectMemberVariableToFamixAttribute [
	| typ |
	typ := irModel ensureIRForFamixClass: FamixPWBUserObject named: 'typ' owner: nil.
	irModel ensureIR: PWBIRValueHolder named: 'att' owner: typ.
	
	typ := typ toFamix: fmxModel.

	self assert: typ attributes size equals: 1.
	self assert: typ attributes anyOne name equals: 'att'.
	self assert: typ attributes anyOne parentType equals: typ.
	

]
