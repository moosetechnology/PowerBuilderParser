Class {
	#name : #PWBASTVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor',
		'result',
		'model'
	],
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBASTVisitorTest >> setUp [
	| library context |
	visitor := PWBEntityCreatorFutureReferenceSolverVisitor new.
	model := FamixPWBModel new.
	library := FamixPWBLibrary new
		name: 'TestLib';
		mooseModel: model;
		yourself.
	visitor
		file: 'aFile.sru' asFileReference;
		model: model.
	visitor currentLibrary: library.
	context := FamixPWBImportingContext new importMaximum.
	context imports: (context imports reject: [ :class | class name endsWith: 'Anchor' ]).
	visitor importingContext: context.
	result := PWBCommonParser new parse: self sourceExample.
	result
		fileName: 'aFile';
		fileExtension: 'sru'
]

{ #category : #running }
PWBASTVisitorTest >> sourceExample [
	^ 
'private function integer aFunction ();
  long aLong
  anotherFunction(2, "blah")
  return ALONG
end function
private function integer anotherFunction (long aLong, string aString);  
  AFUNCTION(aLong)
  return 1
end function

private function integer eventTestingFunction()
this.triggerEvent("evt_trigger", 0, "")
this.postEvent("evt_post", 0, "")
TriggerEvent( this, "destructor" )
end function
'
]

{ #category : #tests }
PWBASTVisitorTest >> testParserEventInvocation [
	| modelTriggerEvent |
	visitor
		visit: result;
		resolveUnresolvedReferences.
	self assert: (model allWithType: FamixPWBEvent) size equals: 2.
	
	modelTriggerEvent :=(model allWithType: FamixPWBEvent) anyOne.
	
	self assert: modelTriggerEvent incomingInvocations size equals: 1.
	self
		assert: modelTriggerEvent incomingInvocations anyOne sender name
		equals: 'eventTestingFunction'
]

{ #category : #tests }
PWBASTVisitorTest >> testParserFunctionInvocationCorrectCase [
	| invok |
	visitor
		visit: result;
		resolveUnresolvedReferences.
	self assert: model allInvocations size equals: 4.
	invok := model allInvocations select: [ :i | i target anyOne name asLowercase = 'afunction' ].
	self assert: invok size equals: 1.
	self
		assert: invok anyOne target anyOne name
		equals: 'aFunction'.
	self assert: (model allWithType: FamixPWBSubRoutine) size equals: 0
]

{ #category : #tests }
PWBASTVisitorTest >> testParserFunctionInvocationWrongCase [
	| invok |
	visitor
		visit: result;
		resolveUnresolvedReferences.
	self assert: model allInvocations size equals: 4.
	invok := model allInvocations
		select: [ :i | i target anyOne name asLowercase = 'anotherfunction' ].
	self assert: invok size equals: 1.
	self
		assert: invok anyOne target anyOne name
		equals: 'anotherFunction'.
	self assert: (model allWithType: FamixPWBSubRoutine) size equals: 0
]

{ #category : #tests }
PWBASTVisitorTest >> testParserVariableAccessCorrectCase [
	| acc |
	visitor
		visit: result;
		resolveUnresolvedReferences.
	self assert: model allAccesses size equals: 2.
	acc := model allAccesses select: [ :a | a accessor name asLowercase = 'anotherfunction' ].
	self assert: acc size equals: 1.
	self
		assert: acc anyOne variable name
		equals: 'aLong'.
]

{ #category : #tests }
PWBASTVisitorTest >> testParserVariableAccessWrongCase [
	| acc |
	visitor
		visit: result;
		resolveUnresolvedReferences.
	self assert: model allAccesses size equals: 2.
	acc := model allAccesses select: [ :a | a accessor name asLowercase = 'afunction' ].
	self assert: acc size equals: 1.
	self
		assert: acc anyOne variable name
		equals: 'aLong'.
]
