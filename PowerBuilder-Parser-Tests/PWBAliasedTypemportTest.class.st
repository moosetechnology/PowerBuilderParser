Class {
	#name : #PWBAliasedTypemportTest,
	#superclass : #PWBSRUImporterVisitorsTest,
	#category : #'PowerBuilder-Parser-Tests-Visitors'
}

{ #category : #running }
PWBAliasedTypemportTest >> setUp [
	| testuo otheruo |
	super setUp.

	testuo := (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne.
	otheruo := model ensureIRForFamixClass: FamixPWBUserObject named: 'other_uo' owner: nil.

	(model ensureIRForFamixClass: FamixPWBFunction named: 'myFunc' owner: testuo)
		declaredType: testuo.

	(model ensureIRForFamixClass: FamixPWBInstanceVariable named: 'uo_var_integer' owner: testuo)
		declaredType: (model ensureIRForFamixClass: FamixPWBBasicType named: 'integer' owner: nil).

	"we need to be able to use:
	 <test_uo variable>.other_att.uo_var_string"
	(model ensureIRForFamixClass: FamixPWBInstanceVariable named: 'other_att' owner: testuo)
		declaredType: otheruo.
	(model ensureIRForFamixClass: FamixPWBInstanceVariable named: 'uo_var_string' owner: otheruo)
		declaredType: (model ensureIRForFamixClass: FamixPWBBasicType named: 'string' owner: nil).

]

{ #category : #tests }
PWBAliasedTypemportTest >> testAliasedTypeInExternalObject [
	| alias |
	sourceExample :=
'forward
  global type majorObjectTest from userobject
  end type
  type aliased_type from userobject within other_uo
  end type
end forward
'.
	self importCode.

	self assert: (model getAllIR: PWBIRType) size equals: 5.
	self
		assertCollection: ((model getAllIR: PWBIRType) collect: #name)
		hasSameElements: #( majorObjectTest other_uo aliased_type integer string).

	alias := (model getAllIR: PWBIRAliasEntity named: 'aliased_type') anyOne.
	self
		assert: alias owner
		equals: (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne.
	self
		assert: alias aliasedEntity class
		equals: PWBIRType.
	self
		assert: alias aliasedEntity name
		equals: 'aliased_type'.
	self
		assert: alias aliasedEntity owner
		equals: (model getAllIR: PWBIRType named: 'other_uo') anyOne.

]

{ #category : #tests }
PWBAliasedTypemportTest >> testAliasedTypeInMainObject [
	sourceExample :=
'forward
  global type majorObjectTest from userobject
  end type
  type other_uo from userobject within majorObjectTest
  end type
  type aliased_type from userobject within majorObjectTest
  end type
end forward
'.
	(model getAllIR: PWBIRType named: 'other_uo')
		anyOne
		owner: (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne.
	self importCode.

	self assert: (model getAllIR: PWBIRType) size equals: 6.
	self
		assertCollection: ((model getAllIR: PWBIRType) collect: #name)
		hasSameElements: #( majorObjectTest other_uo aliased_type integer string userobject).
		
	self
		assert: (model getAllIR: PWBIRType named: 'other_uo') anyOne owner
		equals: (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne.
		
	self
		assert: (model getAllIR: PWBIRType named: 'aliased_type') anyOne owner
		equals: (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne
	

]
