Class {
	#name : #PWBIRModelVisitorTest,
	#superclass : #PWBAbstractASTToIRVisitorTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBIRModelVisitorTest >> sourceExample [
	^
'global variables
  long gl_long1;
  global String gs_string1;
end variables

shared variables
  test_uo uo_var;
end variables

type variables
  long il_long1;
end variables

private function integer aFunction ();
  long lL_return
  var.isNull()
  anotherFunction(2, "blah")
  return LL_RETURN
  return -1
end function

private function integer anotherFunction (long aLong, uo_datawindow dw_param);  
  AFUNCTION(aLong)
  this.il_long1 = 5
  return trim("bla")
  return ll_pos - 1 
  return il_long1[1]
end function

private function integer eventTestingFunction()
  this.triggerEvent("evt_trigger", 0, "")
  this.postEvent("evt_post", 0, "")
  TriggerEvent( this, "destructor" )
end function
'
]

{ #category : #tests }
PWBIRModelVisitorTest >> testFunctionInvocationSourceText [
	| invocation1 invocation2 |
	invocation1 := ((model getAllFamixType: FamixPWBFunction)
		detect: [ :function | function name = 'anotherFunction' ]
		ifNone: [self fail])
		incomingInvocations anyOne.
	invocation2 := model allInvocations
		detect: [ :inv | inv candidates anyOne name = 'isNull' ]
		ifNone: [self fail].
	self
		assert: (self sourceText: invocation1)
		equals: 'anotherFunction(2, "blah")'.
	self assert: (self sourceText: invocation2) equals: '.isNull()'
]

{ #category : #tests }
PWBIRModelVisitorTest >> testGlobalVariables [
	self
		assertCollection: ((model getAllFamixType: FamixPWBGlobalVariable) collect: #name)
		hasSameElements: {'gl_long1' . 'gs_string1'}
]

{ #category : #tests }
PWBIRModelVisitorTest >> testInstanceVariables [
	self
		assertCollection: ((model getAllFamixType: FamixPWBInstanceVariable) collect: #name)
		hasSameElements: {'il_long1'}
]

{ #category : #tests }
PWBIRModelVisitorTest >> testParameter [
	self
		assertCollection: ((model getAllFamixType: FamixPWBParameter) collect: #name)
		hasSameElements: {'aLong' . 'dw_param'}
]

{ #category : #tests }
PWBIRModelVisitorTest >> testParameterType [
	| param |
	param := (model getAllFamixType: FamixPWBParameter)
		detect: [ :each | each name = 'dw_param' ]
		ifNone: [self fail].
	self
		assertCollection: param declaredType expectedFamixKinds
		hasSameElements: {FamixPWBCustomType}
]

{ #category : #tests }
PWBIRModelVisitorTest >> testParserAttributeAccess [
	| acc |
	self assert: model allAccesses size equals: 6.
	acc := model allAccesses
		select: [ :a | a variable name asLowercase = 'il_long1' ].
	self assert: acc anyOne accessor name equals: 'anotherFunction'.
	self assert: (acc select: #isWrite) isNotEmpty
]

{ #category : #tests }
PWBIRModelVisitorTest >> testParserEventInvocation [
	| modelTriggerEvent |
	self assert: (model getAllFamixType: FamixPWBEvent) size equals: 2.
	modelTriggerEvent := (model getAllFamixType: FamixPWBEvent) anyOne.
	self assert: modelTriggerEvent incomingInvocations size equals: 1.
	self
		assert: modelTriggerEvent incomingInvocations anyOne sender name
		equals: 'eventTestingFunction'.
	self
		assert: (self sourceText: modelTriggerEvent incomingInvocations anyOne)
		equals: 'this.triggerEvent("evt_trigger", 0, "")'
]

{ #category : #tests }
PWBIRModelVisitorTest >> testParserFunctionInvocationCorrectCase [
	| invok |
	self assert: model allInvocations size equals: 6.
	invok := model allInvocations select: [ :i |
		(i source name asLowercase = 'afunction')
		and: [ i target anyOne name asLowercase ~= 'isnull' ] ].
	self assert: invok size equals: 1.
	self
		assert: invok anyOne target anyOne name
		equals: 'anotherFunction'.
	self assert: (model allWithType: FamixPWBSubRoutine) size equals: 1
]

{ #category : #tests }
PWBIRModelVisitorTest >> testParserFunctionInvocationWrongCase [
	| invok |
	self assert: model allInvocations size equals: 6.
	invok := model allInvocations
		select: [ :i | i source name asLowercase = 'anotherfunction' ].
	self assert: invok size equals: 2.
	self
		assertCollection: (invok flatCollect: [ :invk | invk target collect: #name ])
		hasSameElements: {'trim' . 'aFunction'}.
	self assert: (model allWithType: FamixPWBSubRoutine) size equals: 1
]

{ #category : #tests }
PWBIRModelVisitorTest >> testParserVariableAccessCorrectCase [
	| acc |
	self assert: model allAccesses size equals: 6.
	acc := model allAccesses select: [ :a | a variable name asLowercase = 'along' ].
	self assert: acc size equals: 1.
	self
		assert: acc anyOne accessor name asLowercase
		equals: 'anotherfunction'.
]

{ #category : #tests }
PWBIRModelVisitorTest >> testParserVariableAccessWrongCase [
	| accs |
	self assert: model allAccesses size equals: 6.
	accs := model allAccesses
		select: [ :a | a accessor name asLowercase = 'afunction' ].
	self assert: accs size equals: 2.
	self
		assertCollection: (accs collect: [ :acc | acc variable name asLowercase ])
		hasSameElements: {'ll_return' . 'var'}
]

{ #category : #tests }
PWBIRModelVisitorTest >> testResolveUserObjectType [
	| uoTests|
	uoTests := model getAllEntities select: [ : e | e name = 'test_uo' ].
	self assert: uoTests size equals: 1.
	self
		assertCollection: uoTests anyOne expectedFamixKinds
		hasSameElements: { FamixPWBUserObject }
]

{ #category : #tests }
PWBIRModelVisitorTest >> testSharedVariables [
	self
		assertCollection: ((model getAllFamixType: FamixPWBSharedVariable) collect: #name)
		hasSameElements: {'uo_var'}
]

{ #category : #tests }
PWBIRModelVisitorTest >> testSourceTestSettings [
	| eventTestingFunction |
	eventTestingFunction := (model getAllFamixType: FamixPWBFunction)
		detect: [ :function | function name = 'eventTestingFunction' ]
		ifNone: [self fail].
	self
		assert: (self sourceText: eventTestingFunction)
		equals:
			'private function integer eventTestingFunction()
  this.triggerEvent("evt_trigger", 0, "")
  this.postEvent("evt_post", 0, "")
  TriggerEvent( this, "destructor" )
end function'
]
