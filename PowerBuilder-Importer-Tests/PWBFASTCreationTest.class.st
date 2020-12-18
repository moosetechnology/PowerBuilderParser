Class {
	#name : #PWBFASTCreationTest,
	#superclass : #PWBFASTAbstractTest,
	#category : #'PowerBuilder-Importer-Tests'
}

{ #category : #tests }
PWBFASTCreationTest >> testParseEmptyFunction [
	| result |
	importer
		sourceCode: 'function integer aFunction ();
	long aVar
end function'.
	result := importer run.
	self assert: result notNil.

"private function integer aFunction ();
  this.attTest1_uo.att1.var1 = 3
  this.my_uo
  this.my_uo.var = 5
  this.my_uo.myFunc()
  return this.my_uo.myFunc()
  return this.my_uo.myFunc(5,""allo"")
end function"
]

{ #category : #tests }
PWBFASTCreationTest >> testParseFunctionAccessesAnchor [
	| result node |
	importer
		sourceCode: 'function integer aFunction ();
	this.my_uo
end function'.
	result := importer run.

	self assert: (result anySatisfy: [ :n | n class = FASTPWBDottedExpression ]).
	
	node := result detect: [ :n | n class = FASTPWBDottedExpression ].
	self assert: node startPos equals: 33.
	self assert: node endPos equals: 42.

	self assert: (result select: [ :n | n class = FASTPWBAccess ]) size equals: 2.

	node := (result select: [ :n | n class = FASTPWBAccess ])
				first.
	(node startPos = 33)
	ifTrue: [ self assert: node endPos equals: 36 ]
	ifFalse: [ 
		self assert: node startPos equals: 37.
		self assert: node endPos equals: 42.
	].

	node := (result select: [ :n | n class = FASTPWBAccess ])
				second.
	(node startPos = 33)
	ifTrue: [ self assert: node endPos equals: 36 ]
	ifFalse: [ 
		self assert: node startPos equals: 37.
		self assert: node endPos equals: 42.
	].

]

{ #category : #tests }
PWBFASTCreationTest >> testParseFunctionAccessesInstanceVariable [
	| result node |
	importer
		sourceCode: 'function integer aFunction ();
	this.my_uo
end function'.
	result := importer run.

	self assert: (result anySatisfy: [ :n | n class = FASTPWBDottedExpression ]).
	
	node := result detect: [ :n | n class = FASTPWBDottedExpression ].
	
	self assert: node majorObject isNotNil.
	self assert: node majorObject class equals: FASTPWBAccess.
	self assert: node majorObject identifier class equals: FASTPWBImplicitVariable.

	self assert: node member isNotNil.
	self assert: node member class equals: FASTPWBAccess.
	self assert: node member identifier class equals: FASTPWBIdentifier.
	self assert: node member identifier name equals: 'my_uo'.
	
]

{ #category : #tests }
PWBFASTCreationTest >> testParseFunctionAccessesThis [
	| node result |
	importer
		sourceCode: 'function integer aFunction ();
	this
end function'.
	result := importer run.

	self assert: result size equals: 2.

	self assert: (result anySatisfy: [ :n | n class = FASTPWBAccess ]).
	self assert: (result anySatisfy: [ :n | n class = FASTPWBImplicitVariable ]).

	node := result detect: [ :n | n class = FASTPWBAccess ].
	self assert: node identifier isNotNil.
	self assert: node identifier class equals: FASTPWBImplicitVariable.
	self assert: node startPos equals: 33.
	self assert: node endPos equals: 36.
	

]

{ #category : #tests }
PWBFASTCreationTest >> testParseFunctionReturnAnchor [
	| result |
	importer
		sourceCode: 'function integer aFunction ();
	return 1
end function'.
	result := importer run.

	result := result
		detect: [ :each | each  class = FASTPWBReturnStatement ]
		ifNone: [ nil ].

	self assert: result isNotNil.
	self assert: result startPos equals: 33.
	self assert: result endPos equals: 40.

]

{ #category : #tests }
PWBFASTCreationTest >> testParseFunctionReturnsLiteral [
	| result |
	importer
		sourceCode: 'function integer aFunction ();
	return 1
end function'.
	result := importer run.

	self assert: result size equals: 2.
	
	result := result
		detect: [ :each | each  class = FASTPWBReturnStatement ]
		ifNone: [ nil ].

	self assert: result notNil.
	self assert: result expression class equals: FASTPWBIntegerLiteral.
	self assert: result expression value equals: '1'
	

]

{ #category : #tests }
PWBFASTCreationTest >> testParseFunctionWithInvocation [
	| result node |
	importer
		sourceCode: 'function integer aFunction ();
	this.my_uo.funcNoArg()
end function'.
	result := importer run.

	self assert: (result anySatisfy: [ :n | n class = FASTPWBFunctionInvocation ]).
	
	node := result detect: [ :n | n class = FASTPWBFunctionInvocation ].
	
	self assert: node identifier name equals: 'funcNoArg'
]

{ #category : #tests }
PWBFASTCreationTest >> testParseFunctionWithInvocationAnchor [
	| result node |
	importer
		sourceCode: 'function integer aFunction ();
	this.my_uo.funcNoArg()
end function'.
	result := importer run.

	self assert: (result anySatisfy: [ :n | n class = FASTPWBFunctionInvocation ]).
	
	node := result detect: [ :n | n class = FASTPWBFunctionInvocation ].

	self assert: node startPos equals: 44.
	self assert: node endPos equals: 54.
]

{ #category : #tests }
PWBFASTCreationTest >> testParseIncorrectFunction [
	| result |
	importer sourceCode: 'end function'.
	result := importer run.
	self assert:
		result isNil
]
