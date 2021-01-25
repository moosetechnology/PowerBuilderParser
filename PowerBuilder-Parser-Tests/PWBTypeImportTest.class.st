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
PWBTypeImportTest >> testImportedTypeInUnknownExternal [
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
  type imported_type from userobject within new_uo
  end type
end forward
'.

	self assert: (model getAllIR: PWBIRType) size equals: 5.
	self
		assertCollection: ((model getAllIR: PWBIRType) collect: #name)
		hasSameElements: #( majorObjectTest new_uo other_uo imported_type userobject).

	self assert: (model getAllIR: PWBIRImportedType) size equals: 1.
	
	self assert: (model getAllIR: PWBIRImportedType) anyOne name equals: 'imported_type'.
	self
		assert: (model getAllIR: PWBIRImportedType) anyOne owner
		equals: (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne.
	self
		assert: (model getAllIR: PWBIRImportedType) anyOne importedType
		equals: (model getAllIR: PWBIRType named: 'imported_type') anyOne.

	self
		assert: (model getAllIR: PWBIRType named: 'imported_type') anyOne owner
		equals: (model getAllIR: PWBIRType named: 'new_uo') anyOne.

	self assert: (model getAllIR: PWBIRType named: 'new_uo') anyOne owner isNil.
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
	| major level2 |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
  type uo_level2 from userobject within majorObjectTest
  end type
end forward
'.

	self assert: (model getAllIR: PWBIRType) size equals: 4.
	self
		assertCollection: ((model getAllIR: PWBIRType) collect: #name)
	 	hasSameElements: #( majorObjectTest userobject uo_level2 other_uo ).

	major := (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne.
	self assert: major members size equals: 2.
	self
		assertCollection: (major members collect: #name)
	 	hasSameElements: #( uo_level2 other_uo ).
	
	level2 := major members detect: [ :m | m name = 'uo_level2' ].
	self assert: level2 class equals: PWBIRType.
	self assert: level2 name equals: 'uo_level2'.
	self assert: level2 owner equals: (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne.

]

{ #category : #tests }
PWBTypeImportTest >> testTypeWithin2 [
	| major level2 level3 |
	self importCode:
'forward
global type majorObjectTest from userobject
end type
type uo_level2 from userobject within majorObjectTest
end type
type uo_level3 from userobject within uo_level2
end type
end forward
'.

	self assert: (model getAllIR: PWBIRType) size equals: 5.
	self
		assertCollection: ((model getAllIR: PWBIRType) collect: #name)
	 	hasSameElements: #( majorObjectTest userobject uo_level2 uo_level3 other_uo ).

	major := (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne.
	self assert: major members size equals: 3.
	self
		assertCollection: (major members collect: #name)
	 	hasSameElements: #( uo_level2 uo_level3 other_uo ).
	major members
		detect: [ :each | each name = 'uo_level2' ]
		ifOne: [ :each | self assert: each class equals: PWBIRType ]
		ifNone: [ self fail ].
	major members
		detect: [ :each | each name = 'uo_level3' ]
		ifOne: [ :each | self assert: each class equals: PWBIRImportedType ]
		ifNone: [ self fail ].

	level2 := (model getAllIR: PWBIRType named: 'uo_level2') anyOne.
	self assert: level2 owner name equals: 'majorObjectTest'.
	self assert: level2 members size equals: 1.
	self assert: level2 members anyOne class equals: PWBIRType.
	self assert: level2 members anyOne name equals: 'uo_level3'.

	level3 := (model getAllIR: PWBIRImportedType named: 'uo_level3') anyOne.
	self assert: level3 importedType name equals: 'uo_level3'.
	self assert: level3 importedType owner name equals: 'uo_level2'.

]

{ #category : #tests }
PWBTypeImportTest >> testTypeWithin3 [
	| major newuo level2 level3 |
	self importCode:
'forward
global type majorObjectTest from userobject
end type
type uo_level2 from userobject within new_uo
end type
type uo_level3 from userobject within uo_level2
end type
type uo_level2 from userobject within new_uo
  uo_level3 uo_level3
end type
end forward
'.

	self assert: (model getAllIR: PWBIRType) size equals: 6.
	self
		assertCollection: ((model getAllIR: PWBIRType) collect: #name)
	 	hasSameElements: #( majorObjectTest userobject uo_level2 new_uo uo_level3 other_uo ).

	major := (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne.
	newuo := (model getAllIR: PWBIRType named: 'new_uo') anyOne.
	level2 := (model getAllIR: PWBIRType named: 'uo_level2') anyOne.
	level3 := (model getAllIR: PWBIRType named: 'uo_level3') anyOne.

	self assert: major members size equals: 3.
	self
		assertCollection: (major members collect: #name)
	 	hasSameElements: #( uo_level2 uo_level3 other_uo ).

	self assert: (major members detect: [ :m | m name = 'uo_level2' ]) class equals: PWBIRImportedType.
	self
		assert: (major members detect: [ :m | m name = 'uo_level2' ]) importedType
		equals: level2.
	self assert: (major members detect: [ :m | m name = 'uo_level3' ]) class equals: PWBIRImportedType.
	self
		assert: (major members detect: [ :m | m name = 'uo_level3' ]) importedType
		equals: level3.

	self assert: level2 owner equals: newuo.
	"some things are defined on the ImportedType, not the Type itself"
	level2 := (model getAllIR: PWBIRImportedType named: 'uo_level2') anyOne.
	self assert: level2 members size equals: 2.
	self assert: (level2 members includes: level3).
	self assert: (level2 members anySatisfy: [ :m |
		(m class = PWBIRValueHolder) and:
		[ (m name = 'uo_level3') and:
		[ m declaredType = level3 ] ]
		]).

	self assert: level3 owner equals: level2.
	
]

{ #category : #tests }
PWBTypeImportTest >> testTypeWithin4 [
	"more and more complex ..."
	| level2 |
	self importCode:
'forward
global type majorObjectTest from userobject
end type
type uo_level2 from userobject within new_uo
end type
type uo_level3 from userobject within uo_level2
end type
type uo_level2 from userobject within new_uo
  uo_level3 uo_level3
end type
end forward

type uo_level2 from userobject within new_uo
  long aLong = 42
  string aString = "blah"
  uo_level3 uo_level3
end type
'.

	self assert: (model getAllIR: PWBIRType) size equals: 8.
	self
		assertCollection: ((model getAllIR: PWBIRType) collect: #name)
	 	hasSameElements: #( majorObjectTest userobject uo_level2 new_uo uo_level3 long string other_uo ).

	level2 := (model getAllIR: PWBIRType named: 'uo_level2') anyOne.

	self assert: level2 owner name equals: 'new_uo'.
	"some things are defined on the ImportedType, not the Type itself"
	level2 := (model getAllIR: PWBIRImportedType named: 'uo_level2') anyOne.
	self assert: level2 members size equals: 4.
	self assert: (level2 members anySatisfy: [ :m |
		(m class = PWBIRType) and:
		[ (m name = 'uo_level3') ]
		]).
	self assert: (level2 members anySatisfy: [ :m |
		(m class = PWBIRValueHolder) and:
		[ (m name = 'uo_level3') ]
		]).
	self assert: (level2 members anySatisfy: [ :m |
		(m class = PWBIRValueHolder) and:
		[ (m name = 'aLong') and:
		[ m declaredType name = 'long' ] ]
		]).
	self assert: (level2 members anySatisfy: [ :m |
		(m class = PWBIRValueHolder) and:
		[ (m name = 'aString') and:
		[ m declaredType name = 'string' ] ]
		]).

]

{ #category : #tests }
PWBTypeImportTest >> testTypeWithin5 [
	"and it never stops"
	| level2 newuo |
	self importCode:
'forward
global type majorObjectTest from userobject
end type
type uo_level2 from userobject within new_uo
end type
type uo_level3 from userobject within uo_level2
end type
type uo_level2 from userobject within new_uo
  uo_level3 uo_level3
end type
type new_uo from userobject within majorObjectTest
  uo_level2 uo_level2
end type
end forward

type uo_level2 from userobject within new_uo
  long aLong = 42
  string aString = "blah"
  uo_level3 uo_level3
end type
'.

	self assert: (model getAllIR: PWBIRType) size equals: 8.
	self
		assertCollection: ((model getAllIR: PWBIRType) collect: #name)
	 	hasSameElements: #( majorObjectTest userobject uo_level2 new_uo uo_level3 long string other_uo ).

	newuo :=  (model getAllIR: PWBIRType named: 'new_uo') anyOne.
	level2 := (model getAllIR: PWBIRType named: 'uo_level2') anyOne.

	self assert: newuo owner name equals: 'majorObjectTest'.
	self assert: newuo members size equals: 2.
	self assert: (newuo members includes: level2).
	self assert: (newuo members anySatisfy: [ :m |
		(m class = PWBIRValueHolder) and:
		[ (m name = 'uo_level2') and:
		[ m declaredType = level2 ] ]
		]).

	self assert: level2 owner equals: newuo.

]
