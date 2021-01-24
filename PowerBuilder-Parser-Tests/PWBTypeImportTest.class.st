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
PWBTypeImportTest >> testComplexTypeDef1 [
	self importCode:
'forward
global type uo_table_des_prestations from uo_tv_liste_detail_en_partage
end type
type tpr_tp_prp from userobject within ong_tpr
end type
type dw_prp from uo_datawindow within tpr_tp_prp
end type
type tpr_tp_prp from userobject within ong_tpr
dw_prp dw_prp
end type
end forward

type tpr_tp_prp from userobject within ong_tpr
long picturemaskcolor = 553648127
string powertiptext = "Propriétés de la prestation"
dw_prp dw_prp
end type
'.

	self assert: (model getAllIR: PWBIRType) size equals: 9.
	self
		assertCollection: ((model getAllIR: PWBIRType) collect: #name)
	 	hasSameElements: #( majorObjectTest uo_table_des_prestations uo_tv_liste_detail_en_partage tpr_tp_prp userobject ong_tpr dw_prp long string ).
		
	self assert: (model getAllIR: PWBIRType named: 'tpr_tp_prp') anyOne owner name equals: 'ong_tpr'.
	self assert: (model getAllIR: PWBIRType named: 'tpr_tp_prp') anyOne members size equals: 2.

	self assert: (model getAllIR: PWBIRType named: 'dw_prp') anyOne owner name equals: 'tpr_tp_tpr'.
	self assert: (model getAllIR: PWBIRValueHolder named: 'dw_prp') anyOne owner name equals: 'tpr_tp_tpr'.
	self assert: (model getAllIR: PWBIRValueHolder named: 'dw_prp') anyOne declaredType name equals: 'dw_prp'.

]

{ #category : #tests }
PWBTypeImportTest >> testComplexTypeDef2 [
	self importCode:
'forward
global type majorObjectTest from userobject
end type
type tpr_tp_prp from userobject within ong_tpr
end type
type dw_prp from userobject within tpr_tp_prp
end type
type tpr_tp_prp from userobject within ong_tpr
dw_prp dw_prp
end type
type ong_tpr from userobject within majorObjectTest
tpr_tp_prp tpr_tp_prp
end type
end forward

type tpr_tp_prp from userobject within ong_tpr
long picturemaskcolor = 553648127
string powertiptext = "Propriétés de la prestation"
dw_prp dw_prp
end type
'.

	self assert: (model getAllIR: PWBIRType) size equals: 7.
	self
		assertCollection: ((model getAllIR: PWBIRType) collect: #name)
	 	hasSameElements: #( majorObjectTest userobject tpr_tp_prp ong_tpr dw_prp long string ).
		
	self assert: (model getAllIR: PWBIRType named: 'tpr_tp_prp') anyOne owner name equals: 'ong_tpr'.
	self assert: (model getAllIR: PWBIRType named: 'tpr_tp_prp') anyOne members size equals: 2.

	self assert: (model getAllIR: PWBIRType named: 'dw_prp') anyOne owner name equals: 'tpr_tp_tpr'.
	self assert: (model getAllIR: PWBIRValueHolder named: 'dw_prp') anyOne owner name equals: 'tpr_tp_tpr'.
	self assert: (model getAllIR: PWBIRValueHolder named: 'dw_prp') anyOne declaredType name equals: 'dw_prp'.

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
PWBTypeImportTest >> testImportedTypeInExistingExternal [
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

	self assert: (model getAllIR: PWBIRType named: 'imported_type') size equals: 1.
	self
		assert: (model getAllIR: PWBIRType named: 'imported_type') anyOne owner
		equals: (model getAllIR: PWBIRType named: 'other_uo') anyOne.
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

{ #category : #tests }
PWBTypeImportTest >> testTypeWithin1 [
	| ir |
	self importCode:
'forward
global type majorObjectTest from userobject
end type
type tpr_tp_prp from userobject within majorObjectTest
end type
end forward
'.

	self assert: (model getAllIR: PWBIRType) size equals: 3.
	self
		assertCollection: ((model getAllIR: PWBIRType) collect: #name)
	 	hasSameElements: #( majorObjectTest userobject tpr_tp_prp ).

	ir := (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne.
	self assert: ir members size equals: 1.
	self assert: ir members anyOne class equals: PWBIRType.
	self assert: ir members anyOne name equals: 'tpr_tp_prp'.
	self assert: ir members anyOne owner equals: ir.

]

{ #category : #tests }
PWBTypeImportTest >> testTypeWithin2 [
	| ir |
	self importCode:
'forward
global type majorObjectTest from userobject
end type
type tpr_tp_prp from userobject within majorObjectTest
end type
type dw_prp from userobject within tpr_tp_prp
end type
end forward
'.

	self assert: (model getAllIR: PWBIRType) size equals: 4.
	self
		assertCollection: ((model getAllIR: PWBIRType) collect: #name)
	 	hasSameElements: #( majorObjectTest userobject tpr_tp_prp dw_prp ).

	ir := (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne.
	self assert: ir members size equals: 2.
	ir members
		detect: [ :each | each class = PWBIRType ]
		ifOne: [ :each | self assert: each name equals: 'tpr_tp_prp' ]
		ifNone: [ self fail ].
	ir members
		detect: [ :each | each class = PWBIRImportedType ]
		ifOne: [ :each | self assert: each name equals: 'dw_prp' ]
		ifNone: [ self fail ].

	ir := (model getAllIR: PWBIRType named: 'tpr_tp_prp') anyOne.
	self assert: ir owner name equals: 'majorObjectTest'.
	self assert: ir members size equals: 1.
	self assert: ir members anyOne class equals: PWBIRType.
	self assert: ir members anyOne name equals: 'dw_prp'.

	ir := (model getAllIR: PWBIRImportedType named: 'dw_prp') anyOne.
	self assert: ir importedType name equals: 'dw_prp'.
	self assert: ir importedType owner name equals: 'tpr_tp_prp'.

]

{ #category : #tests }
PWBTypeImportTest >> testTypeWithin3 [
	| ir |
	self importCode:
'forward
global type majorObjectTest from userobject
end type
type tpr_tp_prp from userobject within majorObjectTest
end type
type dw_prp from userobject within tpr_tp_prp
end type
end forward
'.

	self assert: (model getAllIR: PWBIRType) size equals: 5.
	self
		assertCollection: ((model getAllIR: PWBIRType) collect: #name)
	 	hasSameElements: #( majorObjectTest userobject tpr_tp_prp ong_tpr dw_prp ).

	ir := (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne.
	self assert: ir members size equals: 2.
	self assert: (ir members allSatisfy: [ :each | each class = PWBIRImportedType ]).

	ir := (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne.
]

{ #category : #tests }
PWBTypeImportTest >> testTypeWithinStubImported [
	| ir |
	self importCode:
'forward
global type majorObjectTest from userobject
end type
type tpr_tp_prp from userobject within majorObjectTest
end type
end forward
'.

	self assert: (model getAllIR: PWBIRType) size equals: 3.
	self
		assertCollection: ((model getAllIR: PWBIRType) collect: #name)
	 	hasSameElements: #( majorObjectTest userobject tpr_tp_prp ).

	ir := (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne.
	self assert: ir members size equals: 1.
	self assert: ir members anyOne class equals: PWBIRType.
	self assert: ir members anyOne name equals: 'tpr_tp_prp'.
	self assert: ir members anyOne owner equals: ir.

]
