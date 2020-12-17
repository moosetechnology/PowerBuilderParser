Class {
	#name : #PWBFASTFamixBindingTest,
	#superclass : #PWBFASTAbstractTest,
	#instVars : [
		'fastEntities',
		'binder'
	],
	#category : #'PowerBuilder-Importer-Tests'
}

{ #category : #running }
PWBFASTFamixBindingTest >> setUp [
	super setUp.
	
	"the source code of the function here must match the model entities created in #setupModel"
	importer
		sourceCode: 'private function integer aFunction ();
  this.my_uo.var = 5
end function'.
	fastEntities := importer run.
	
	binder := PWBFamixFASTBinder new
		famixEntity: function ;
		yourself

]

{ #category : #running }
PWBFASTFamixBindingTest >> setupModel [
	| var uo |
	super setupModel.

	function sourceAnchor: (self createAnchor: 200@250).  "end position does not matter, but start position is important for FAST/Famix binding"

	uo := self create: FamixPWBUserObject named: 'test_uo'.

	(self create: FamixPWBInstanceVariable named: 'my_uo')
		parentType: function parentType ; "i.e. testFile"
		attributeType: uo ;
		yourself.

	var := (self create: FamixPWBInstanceVariable named: 'var')
		parentType: uo ;
		attributeType: (self create: FamixPWBBasicType named: 'integer') ;
		yourself.
	

	"cerating access for 'this.my_uo.var'
	 the source anchor must match the starting position of the function and the source code
	of this function in #setUp"
	FamixPWBAccess new
		mooseModel: model ;
		accessor: function ;
		variable: var ;
		sourceAnchor: (self createAnchor: 247@255).
		
	
]

{ #category : #running }
PWBFASTFamixBindingTest >> testBindingAccess [
	| fastAccess |
	binder fastEntities: (fastEntities select: [ :fast | fast class = FASTPWBAccess ]).
	binder bind.
	
	fastAccess := fastEntities detect: [ :fast | (fast class = FASTPWBAccess) and: [ fast identifier name = 'var'  ] ].
	self assert: (binder famixBinding: fastAccess) isNotNil.

	fastAccess := fastEntities detect: [ :fast | (fast class = FASTPWBAccess) and: [ fast identifier name = 'my_uo'  ] ].
	self assert: (binder famixBinding: fastAccess) isNil.


]
