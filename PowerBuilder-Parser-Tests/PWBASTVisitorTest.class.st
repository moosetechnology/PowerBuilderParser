Class {
	#name : #PWBASTVisitorTest,
	#superclass : #PWBAbstractASTVisitorTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBASTVisitorTest >> sourceExample [
	^ 'global variables
  long gl_long1;
  global String  gs_string1;
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
PWBASTVisitorTest >> testFunctionInvocationSourceText [
	| invocation1 invocation2 |
	invocation1 := ((model allWithType: FamixPWBFunction)
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
PWBASTVisitorTest >> testGlobalVariables [
	self
		assertCollection: ((model allWithType: FamixPWBGlobalVariable) collect: #name)
		hasSameElements: {'gl_long1' . 'gs_string1'}
]

{ #category : #tests }
PWBASTVisitorTest >> testInstanceVariables [
	self
		assertCollection: ((model allWithType: FamixPWBInstanceVariable) collect: #name)
		hasSameElements: {'il_long1'}
]

{ #category : #tests }
PWBASTVisitorTest >> testParameter [
	self
		assertCollection: ((model allWithType: FamixPWBParameter) collect: #name)
		hasSameElements: {'aLong' . 'dw_param'}
]

{ #category : #tests }
PWBASTVisitorTest >> testParameterType [
	| param |
	param := (model allWithType: FamixPWBParameter)
		detect: [ :each | each name = 'dw_param' ]
		ifNone: [self fail].
	self assert: param parameterType class equals: FamixPWBCustomType
]

{ #category : #tests }
PWBASTVisitorTest >> testParserAttributeAccess [
	| acc |
	self assert: model allAccesses size equals: 6.
	acc := model allAccesses
		select: [ :a | a variable name asLowercase = 'il_long1' ].
	self assert: acc anyOne accessor name equals: 'anotherFunction'.
	self assert: (acc select: #isWrite) isNotEmpty
]

{ #category : #tests }
PWBASTVisitorTest >> testParserEventInvocation [
	| modelTriggerEvent |
	self assert: (model allWithType: FamixPWBEvent) size equals: 2.
	modelTriggerEvent := (model allWithType: FamixPWBEvent) anyOne.
	self assert: modelTriggerEvent incomingInvocations size equals: 1.
	self
		assert: modelTriggerEvent incomingInvocations anyOne sender name
		equals: 'eventTestingFunction'.
	self
		assert: (self sourceText: modelTriggerEvent incomingInvocations anyOne)
		equals: 'this.triggerEvent("evt_trigger", 0, "")'
]

{ #category : #tests }
PWBASTVisitorTest >> testParserFunctionInvocationCorrectCase [
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
PWBASTVisitorTest >> testParserFunctionInvocationWrongCase [
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
PWBASTVisitorTest >> testParserReturnAfunctionCall [
	| returns |
	returns := (model allWithType: FamixPWBFunctionReturn)
		select: [ :r | r name = 'anotherFunction' ].
	self assert: returns isNotEmpty.
	self
		assert:
			(returns detect: [ :r | r returnValue beginsWith: 'trim' ])
				returnValue
		equals: 'trim("bla")'
]

{ #category : #tests }
PWBASTVisitorTest >> testParserReturnArithmeticExpression [
	| returns |
	returns := (model allWithType: FamixPWBFunctionReturn)
		select: [ :r | r name = 'anotherFunction' ].
	self assert: returns isNotEmpty.
	self
		assert:
			(returns detect: [ :r | r returnValue beginsWith: 'll_pos' ])
				returnValue
		equals: 'll_pos - 1'
]

{ #category : #tests }
PWBASTVisitorTest >> testParserReturnArrayWithSize [
	| return |
	return := (model allWithType: FamixPWBFunctionReturn)
		select: [ :r | r name = 'anotherFunction' ].
	self assert: return isNotEmpty.
	self
		assert: (return detect: [ :e | e returnValue beginsWith: 'il' ]) returnValue
		equals: 'il_long1[1]'
]

{ #category : #tests }
PWBASTVisitorTest >> testParserReturnConstant [
	| returns |
	returns := (model allWithType: FamixPWBFunctionReturn)
		select: [ :r | r name = 'aFunction' ].
	self assert: returns isNotEmpty.
	self
		assert: (returns
			detect: [ :r | r returnValue endsWith: '1' ]
			ifNone: [self fail])
			returnValue
		equals: '-1'
]

{ #category : #tests }
PWBASTVisitorTest >> testParserReturnVariable [
	| returns |
	returns := (model allWithType: FamixPWBFunctionReturn)
		select: [ :r | r name = 'aFunction' ].
	self assert: returns isNotEmpty.
	self
		assert: (returns
			detect: [ :r | r returnValue beginsWith: 'LL' ]
			ifNone: [self fail])
			returnValue
		equals: 'LL_RETURN'
]

{ #category : #tests }
PWBASTVisitorTest >> testParserVariableAccessCorrectCase [
	| acc |
	self assert: model allAccesses size equals: 6.
	acc := model allAccesses select: [ :a | a variable name asLowercase = 'along' ].
	self assert: acc size equals: 1.
	self
		assert: acc anyOne accessor name asLowercase
		equals: 'anotherfunction'.
]

{ #category : #tests }
PWBASTVisitorTest >> testParserVariableAccessWrongCase [
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
PWBASTVisitorTest >> testResolveUserObjectType [
	| uoTests|
	uoTests := model entities select: [ : e | e name = 'test_uo' ].
	self assert: uoTests size equals: 1.
	self assert: uoTests anyOne class equals: FamixPWBUserObject 
]

{ #category : #tests }
PWBASTVisitorTest >> testSharedVariables [
	self
		assertCollection: ((model allWithType: FamixPWBSharedVariable) collect: #name)
		hasSameElements: {'uo_var'}
]

{ #category : #tests }
PWBASTVisitorTest >> testSourceTestSettings [
	| eventTestingFunction |
	eventTestingFunction := (model allWithType: FamixPWBFunction)
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
