Class {
	#name : #PWBSourceCodeTest,
	#superclass : #PWBAbstractImporterVisitorsTest,
	#instVars : [
		'headerCode'
	],
	#category : #'PowerBuilder-Parser-Tests-Visitors'
}

{ #category : #running }
PWBSourceCodeTest >> fileExtension [ 
	^'sru'
]

{ #category : #running }
PWBSourceCodeTest >> importCodeWithForward: aString [
	^self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward
' , aString
]

{ #category : #running }
PWBSourceCodeTest >> sourceCodeOf: anEntity [
	^sourceExample
		copyFrom: anEntity startPos
		to: anEntity endPos
]

{ #category : #tests }
PWBSourceCodeTest >> testFunctionLocalVariableSourceCode [
	self importCodeWithForward:
'private function integer aFunction ();
  long lL_return
  return -1
end function
'.

	(model getAllIR: PWBIRValueHolder)
		detect: [ :var | var name = 'lL_return' ]
		ifOne: [ :var |
			self assert: var startPos isNumber.
			self assert: (self sourceCodeOf: var) equals: 'long lL_return'.
			self assert: var file basename equals: 'majorObjectTest.sru'
		]
		ifNone: [ self fail ].

]

{ #category : #tests }
PWBSourceCodeTest >> testFunctionParameterSourceCode [
	self importCodeWithForward:
'private function long aFunction (long aLong, uo_datawindow dw_param); 
  return 5
end function
'.

	(model getAllIR: PWBIRValueHolder)
		detect: [ :var | var name = 'aLong' ]
		ifOne: [ :param |
			self assert: param startPos isNumber.
			self assert: (self sourceCodeOf: param) equals: 'long aLong'.
			self assert: param file basename equals: 'majorObjectTest.sru'
		]
		ifNone: [ self fail ].

	(model getAllIR: PWBIRValueHolder)
		detect: [ :var | var name = 'dw_param' ]
		ifOne: [ :param |
			self assert: (self sourceCodeOf: param) equals: 'uo_datawindow dw_param'.
			self assert: param file basename equals: 'majorObjectTest.sru'
		]
		ifNone: [ self fail ].


]

{ #category : #tests }
PWBSourceCodeTest >> testFunctionSourceCode [
	| fctCode fct |
	fctCode :=
'private function integer aFunction ();
  blah = 2
end function
'.
	self importCodeWithForward: fctCode.

	fct := (model getAllIR: PWBIRFunction) anyOne.

	self assert: fct isNotNil.
	self assert: fct startPos isNumber.
	self assert: (self sourceCodeOf: fct) equals: fctCode.

]

{ #category : #tests }
PWBSourceCodeTest >> testGlobalVariableSourceCode [
	self importCodeWithForward:
'global variables
  long gl_long;
  global String gs_string;
end variables
'.

	(model getAllIR: PWBIRValueHolder)
		detect: [ :var | var name = 'gl_long' ]
		ifOne: [ :var |
			self assert: var startPos isNumber.
			self assert: (self sourceCodeOf: var) equals: 'long gl_long'.
			self assert: var file basename equals: 'majorObjectTest.sru'
		]
		ifNone: [ self fail ].

	(model getAllIR: PWBIRValueHolder)
		detect: [ :var | var name = 'gs_string' ]
		ifOne: [ :var |
			self assert: var startPos isNumber.
			self assert: (self sourceCodeOf: var) equals: 'String gs_string'.
			self assert: var file basename equals: 'majorObjectTest.sru'
		]
		ifNone: [ self fail ].

]

{ #category : #tests }
PWBSourceCodeTest >> testInstanceVariableSourceCode [
	self importCodeWithForward:
'type variables
  long il_long;
end variables
'.

	(model getAllIR: PWBIRValueHolder)
		detect: [ :var | var name = 'il_long' ]
		ifOne: [ :var |
			self assert: var startPos isNumber.
			self assert: (self sourceCodeOf: var) equals: 'long il_long'.
			self assert: var file basename equals: 'majorObjectTest.sru'
		]
		ifNone: [ self fail ].

]

{ #category : #tests }
PWBSourceCodeTest >> testMainTypeSourceCode [
	self importCodeWithForward: ''.

	(model getAllIR: PWBIRType)
		detect: [ :typ | typ name = 'majorObjectTest' ]
		ifOne: [ :typ |
			self assert: typ startPos isNumber.
			self assert: (self sourceCodeOf: typ) equals: 'global type majorObjectTest from userobject
  end type'.
			self assert: typ file basename equals: 'majorObjectTest.sru'
		]
		ifNone: [ self fail ].

]

{ #category : #tests }
PWBSourceCodeTest >> testOtherTypeSourceCode [
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
  type local_type from userobject within other_uo
  end type
end forward
'.


	(model getAllIR: PWBIRImportedType)
		detect: [ :typ | typ name = 'local_type' ]
		ifOne: [ :typ |
			self assert: typ startPos isNumber.
			self assert: (self sourceCodeOf: typ) equals: 'type local_type from userobject within other_uo
  end type'.
			self assert: typ file basename equals: 'majorObjectTest.sru'
		]
		ifNone: [ self fail ].

]

{ #category : #tests }
PWBSourceCodeTest >> testSharedVariableSourceCode [
	self importCodeWithForward:
'shared variables
  test_uo uo_var;
end variables
'.

	(model getAllIR: PWBIRValueHolder)
		detect: [ :var | var name = 'uo_var' ]
		ifOne: [ :var |
			self assert: var startPos isNumber.
			self assert: (self sourceCodeOf: var) equals: 'test_uo uo_var'.
			self assert: var file basename equals: 'majorObjectTest.sru'
		]
		ifNone: [ self fail ].

]
