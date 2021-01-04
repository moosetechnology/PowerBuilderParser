Class {
	#name : #PWBIRModelVisitorTest,
	#superclass : #PWBAbstractASTToIRVisitorTest,
	#category : #'PowerBuilder-Parser-Tests-Visitors'
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

private function long anotherFunction (long aLong, uo_datawindow dw_param);  
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
PWBIRModelVisitorTest >> testFunction [
	| fct |
	self assert: (model getAllFamixType: FamixPWBFunction) size equals: 5.
	self
		assertCollection: ((model getAllFamixType: FamixPWBFunction) collect: #name)
		hasSameElements: { 'aFunction' . 'isNull' . 'anotherFunction' . 'trim' . 'eventTestingFunction' }.

	fct := (model getAllIR: PWBIRFunction named: 'aFunction')
		anyOne.
	self assert: fct declaredType name equals: 'integer'.

	fct := (model getAllIR: PWBIRFunction named: 'anotherFunction')
		anyOne.
	self assert: fct declaredType name equals: 'long'.
]

{ #category : #tests }
PWBIRModelVisitorTest >> testFunctionInvocationSourceText [
	| invocation1 invocation2 |
	
	self flag: #TODOSourceAnchor.
	self skip.

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
		hasSameElements: { 'il_long1' }
]

{ #category : #tests }
PWBIRModelVisitorTest >> testLocalVariables [
	| locals fct |
	locals := model getAllFamixType: FamixPWBLocalVariable.
	fct := (model getAllIR: PWBIRFunction named: 'aFunction')
		anyOne.
	
	self assert: locals size equals: 1.
	self assert: locals anyOne name equals: 'lL_return'.
	self assert: locals anyOne owner equals: fct.

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
		hasSameElements: PWBIRType mappingFamixClasses
]

{ #category : #tests }
PWBIRModelVisitorTest >> testParserAttributeAccess [
	| accesses fct |
	fct := (model getAllIR: PWBIRFunction named: 'anotherFunction')
				anyOne.

	accesses := fct dependencies select: [ :ir | ir class = PWBIRValueHolder ].
	self assert: accesses size equals: 4.
	self
		assertCollection: (accesses collect: #name)
		hasSameElements: {'aLong' . 'il_long1' . 'll_pos'}
]

{ #category : #tests }
PWBIRModelVisitorTest >> testParserEventInvocation [
	| events fct |
	fct := (model getAllIR: PWBIRFunction named: 'eventTestingFunction')
				anyOne.

	events := model getAllFamixType: FamixPWBEvent.
	self assert: events size equals: 2.

	events do: [ :evt |
		self assert: (fct dependencies includes: evt)
	]

]

{ #category : #tests }
PWBIRModelVisitorTest >> testParserFunctionInvocationCorrectCase [
	| caller callee |
	caller := (model getAllIR: PWBIRFunction named: 'aFunction')
				anyOne.
	callee := (model getAllIR: PWBIRFunction named: 'anotherFunction')
				anyOne.

	self assert: (caller dependencies includes: callee)
]

{ #category : #tests }
PWBIRModelVisitorTest >> testParserFunctionInvocationWrongCase [
	| caller callee |
	caller := (model getAllIR: PWBIRFunction named: 'anotherFunction')
				anyOne.
	callee := (model getAllIR: PWBIRFunction named: 'aFunction')
				anyOne.

	self assert: (caller dependencies includes: callee)
]

{ #category : #tests }
PWBIRModelVisitorTest >> testParserVariableAccessMixedCase [
	| accesses fct |
	fct := (model getAllIR: PWBIRFunction named: 'aFunction')
				anyOne.

	accesses := fct dependencies select: [ :ir | ir class = PWBIRValueHolder ].
	self assert: accesses size equals: 2.
	self
		assertCollection: (accesses collect: #name)
		hasSameElements: {'lL_return' . 'var'}
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
	| shared |
	shared := model getAllFamixType: FamixPWBSharedVariable.

	self assert: shared size equals: 1.
	self assert: shared anyOne name equals: 'uo_var'.
	self
		assert: shared anyOne owner
		equals: ((model getAllIR: PWBIRType named: 'testFile')
			anyOne)

]

{ #category : #tests }
PWBIRModelVisitorTest >> testSourceTestSettings [
	| eventTestingFunction |

	self flag: #TODOSourceAnchor.
	self skip.

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
