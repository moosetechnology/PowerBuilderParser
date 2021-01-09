Class {
	#name : #PWBSRUImporterVisitorsTest,
	#superclass : #PWBAbstractImporterVisitorsTest,
	#category : #'PowerBuilder-Parser-Tests-Visitors'
}

{ #category : #running }
PWBSRUImporterVisitorsTest >> fileExtension [ 
	^'sru'
]

{ #category : #running }
PWBSRUImporterVisitorsTest >> setUp [
	super setUp.

	self flag: 'TODO: deal with libraries'.
	"library := FamixPWBLibrary new
		name: 'TestLib';
		mooseModel: model;
		yourself."

	model ensureIRForFamixClass: FamixPWBUserObject named: 'majorObjectTest' owner: nil.
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testEventInvocation [
	| events fct |
	self importCode:
'private function integer eventTestingFunction()
  this.triggerEvent("evt_trigger", 0, "")
  this.postEvent("evt_post", 0, "")
  TriggerEvent( this, "destructor" )
end function
'.

	fct := (model getAllIR: PWBIRFunction named: 'eventTestingFunction')
				anyOne.

	events := model getAllFamixType: FamixPWBEvent.
	self assert: events size equals: 2.

	events do: [ :evt |
		self assert:
			(fct dependencies
				contains: [:dep |
					dep isCollection and: [dep anyOne = evt]])
	]

]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testFunction [
	| fct |
	self importCode:
'private function integer aFunction ();
  var.isNull()
  anotherFunction(2, "blah")
  return -1
end function

private function long anotherFunction (long aLong, uo_datawindow dw_param);  
  AFUNCTION(aLong)
  return trim("bla")
end function

private function integer eventTestingFunction()
  this.triggerEvent("evt_trigger", 0, "")
  this.postEvent("evt_post", 0, "")
  TriggerEvent( this, "destructor" )
end function
'.

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
PWBSRUImporterVisitorsTest >> testFunctionInvocationCorrectCase [
	| caller callee |
	self importCode:
'private function integer aFunction ();
  anotherFunction(2, "blah")
  return -1
end function

private function long anotherFunction (long aLong, uo_datawindow dw_param); 
  AFUNCTION(1)
  return 1
end function
'.

	caller := (model getAllIR: PWBIRFunction named: 'aFunction')
				anyOne.
	callee := (model getAllIR: PWBIRFunction named: 'anotherFunction')
				anyOne.

	self assert: caller dependencies size equals: 1.
	self assert: caller dependencies anyOne isCollection.
	self assert: caller dependencies anyOne size equals: 1.
	self assert: caller dependencies anyOne anyOne equals: callee.
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testFunctionInvocationMixedCase [
	| caller callee |
	self importCode:
'private function integer aFunction ();
  anotherFunction(2, "blah")
  return -1
end function

private function long anotherFunction (long aLong, uo_datawindow dw_param); 
  AFUNCTION(1)
  return 1
end function
'.

	caller := (model getAllIR: PWBIRFunction named: 'anotherFunction')
				anyOne.
	callee := (model getAllIR: PWBIRFunction named: 'aFunction')
				anyOne.

	self assert: caller dependencies size equals: 1.
	self assert: caller dependencies anyOne isCollection.
	self assert: caller dependencies anyOne size equals: 1.
	self assert: caller dependencies anyOne anyOne equals: callee.
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testFunctionInvocationSourceText [
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
PWBSRUImporterVisitorsTest >> testGlobalVariables [
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

global variables
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
  return -1
end function
'.

	self
		assertCollection: ((model getAllFamixType: FamixPWBGlobalVariable) collect: #name)
		hasSameElements: {'gl_long1' . 'gs_string1'}
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testImplicitVariable [
	| local |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

private function integer aFunction ();
  return this
end function
'.

	self assert: (model getAllIR: PWBIRValueHolder) size equals: 1.
	local := (model getAllIR: PWBIRValueHolder)
		anyOne.
	self assert: local name equals: 'this'.
	self assert: local declaredType name equals: 'majorObjectTest'.

]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testInstanceVariables [
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

global variables
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
  return -1
end function
'.

	self
		assertCollection: ((model getAllFamixType: FamixPWBInstanceVariable) collect: #name)
		hasSameElements: { 'il_long1' }
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testLocalVariables [
	| locals fct |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

global variables
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
  return -1
end function
'.

	locals := model getAllFamixType: FamixPWBLocalVariable.
	fct := (model getAllIR: PWBIRFunction named: 'aFunction')
		anyOne.
	
	self assert: locals size equals: 1.
	self assert: locals anyOne name equals: 'lL_return'.
	self assert: locals anyOne owner equals: fct.

]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testParameter [
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

private function integer aFunction ();
  long lL_return
  return -1
end function

private function long anotherFunction (long aLong, uo_datawindow dw_param); 
  return 5
end function
'.

	self
		assertCollection: ((model getAllFamixType: FamixPWBParameter) collect: #name)
		hasSameElements: {'aLong' . 'dw_param'}
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testParameterType [
	| param |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

private function integer aFunction ();
  long lL_return
  return -1
end function

private function long anotherFunction (long aLong, uo_datawindow dw_param); 
  return 5
end function
'.

	param := (model getAllFamixType: FamixPWBParameter)
		detect: [ :each | each name = 'dw_param' ]
		ifNone: [self fail].
	self
		assertCollection: param declaredType expectedFamixKinds
		hasSameElements: PWBIRType mappingFamixClasses
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testResolveUserObjectType [
	| uoTests|
	uoTests := model getAllEntities select: [ : e | e name = 'majorObjectTest' ].
	self assert: uoTests size equals: 1.
	self
		assertCollection: uoTests anyOne expectedFamixKinds
		hasSameElements: { FamixPWBUserObject }
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testSharedVariables [
	| shared |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

global variables
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
  return -1
end function
'.

	shared := model getAllFamixType: FamixPWBSharedVariable.

	self assert: shared size equals: 1.
	self assert: shared anyOne name equals: 'uo_var'.
	self
		assert: shared anyOne owner
		equals: ((model getAllIR: PWBIRType named: 'majorObjectTest')
			anyOne)

]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testSourceTestSettings [
	| eventTestingFunction |

	self flag: #TODOSourceAnchor.
	self skip.

	self importCode:
'private function integer eventTestingFunction()
  this.triggerEvent("evt_trigger", 0, "")
  this.postEvent("evt_post", 0, "")
  TriggerEvent( this, "destructor" )
end function
'.

	eventTestingFunction := (model getAllFamixType: FamixPWBFunction)
		detect: [ :function | function name = 'eventTestingFunction' ]
		ifNone: [self fail].
	self
		assert: (self sourceText: eventTestingFunction)
		equals: sourceExample.
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testThisFunction [
	| fct |
	self importCode:
'private function integer aFunction ();
  this.anotherFunction(2)
end function
'.

	fct := ((model getAllIR: PWBIRFunction named: 'aFunction')
		anyOne
		dependencies
			detect: [ :dep | dep isCollection])
				anyOne.

	self assert: fct isNotNil.
	self assert: fct name equals: 'anotherFunction'.

]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testVariableAccesses [
	| accesses fct |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

type variables
  long il_long1;
end variables

private function long anotherFunction (long aLong, uo_datawindow dw_param); 
  AFUNCTION(aLong)
  this.il_long1 = 5
  return ll_pos - 1 
  return il_long1[1]
end function
'.

	fct := (model getAllIR: PWBIRFunction named: 'anotherFunction')
				anyOne.

	accesses := fct dependencies select: [ :ir | ir class = PWBIRValueHolder ].
	self assert: accesses size equals: 5.
	self
		assertCollection: (accesses collect: #name)
		hasSameElements: { 'this' . 'aLong' . 'il_long1' . 'll_pos' }
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testVariableAccessesMixedCase [
	| accesses fct |
	self importCode:
'private function integer aFunction ();
  long lL_return
  var.isNull()
  return LL_RETURN

end function
'.

	fct := (model getAllIR: PWBIRFunction named: 'aFunction')
				anyOne.

	accesses := fct dependencies select: [ :ir | ir class = PWBIRValueHolder ].
	self assert: accesses size equals: 2.
	self
		assertCollection: (accesses collect: #name)
		hasSameElements: {'lL_return' . 'var'}
]
