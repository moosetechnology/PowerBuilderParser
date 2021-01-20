Class {
	#name : #PWBTypeImportTest,
	#superclass : #PWBSRUImporterVisitorsTest,
	#category : #'PowerBuilder-Parser-Tests-Visitors'
}

{ #category : #running }
PWBTypeImportTest >> setUp [
	super setUp.

	model
		ensureIRForFamixClass: FamixPWBUserObject
		named: 'other_uo'
		owner: (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne
]

{ #category : #tests }
PWBTypeImportTest >> testImportedTypeExpectedKind [

	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
  type imported_type from userobject within other_uo
  end type
end forward
'.

	self
		assertCollection: (model getAllIR: PWBIRImportedType) anyOne expectedFamixKinds
		 hasSameElements: PWBIRType defaultFamixClasses.

]

{ #category : #tests }
PWBTypeImportTest >> testImportedTypeInExternalObject [
	| imported |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
  type imported_type from userobject within other_uo
  end type
end forward
'.

	self assert: (model getAllIR: PWBIRType) size equals: 4.
	self
		assertCollection: ((model getAllIR: PWBIRType) collect: #name)
		hasSameElements: #( majorObjectTest other_uo imported_type userobject).

	self assert: (model getAllIR: PWBIRImportedType) size equals: 1.
	imported := (model getAllIR: PWBIRImportedType) anyOne.

	self assert: imported name equals: 'imported_type'.
	self
		assert: imported owner
		equals: (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne.
	self
		assert: imported importedType
		equals: (model getAllIR: PWBIRType named: 'imported_type') anyOne.

]

{ #category : #tests }
PWBTypeImportTest >> testImportedTypeInMainObject [

	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
  type imported_type from userobject within majorObjectTest
  end type
end forward
'.

	self assert: (model getAllIR: PWBIRType) size equals: 4.
	self
		assertCollection: ((model getAllIR: PWBIRType) collect: #name)
		hasSameElements: #( majorObjectTest other_uo imported_type userobject).

	self
		assert: (model getAllIR: PWBIRType named: 'imported_type') anyOne owner
		equals: (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne

]

{ #category : #tests }
PWBTypeImportTest >> testMemberVarSameNameAsImportedType [

	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
  type imported_type from userobject within other_uo
  end type
end forward

global type majorObjectTest from userobject
  imported_type imported_type
end type
'.


	self
		assert: (model getAllIR: PWBIRValueHolder) size
		equals: 1.
	self
		assert: (model getAllIR: PWBIRValueHolder) anyOne name
		equals: #imported_type.
	self
		assert: (model getAllIR: PWBIRValueHolder) anyOne declaredType
		equals: (model getAllIR: PWBIRImportedType) anyOne
]
