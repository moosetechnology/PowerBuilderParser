Class {
	#name : #PWBCodeRewriteVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'parser',
		'visitor'
	],
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBCodeRewriteVisitorTest >> setUp [
	visitor := PWBCodeRewriteVisitor new.
	parser := PWBCommonParser new
]

{ #category : #tests }
PWBCodeRewriteVisitorTest >> testVisitReturnArrayVariable [
	| ast |
	ast := parser returnStatement parse: 'return ll_var[myvar]'.
	self assert: (visitor visit: ast) stream equals: 'll_var[myvar]'
]

{ #category : #tests }
PWBCodeRewriteVisitorTest >> testVisitReturnArrayVariable1 [
	| ast |
	ast := parser returnStatement parse: 'return ll_var[5]'.
	self assert: (visitor visit: ast) stream equals: 'll_var[5]'
]

{ #category : #tests }
PWBCodeRewriteVisitorTest >> testVisitReturnAttribute [
	| ast |
	ast := parser returnStatement parse: 'return ll_var.att'.
	self assert: (visitor visit: ast) stream equals: 'll_var.att'
]

{ #category : #tests }
PWBCodeRewriteVisitorTest >> testVisitReturnMethodInvocation [
	| ast |
	ast := parser returnStatement parse: 'return my_uo.myFunc()'.
	self assert: (visitor visit: ast) stream equals: 'my_uo.myFunc()'
]

{ #category : #tests }
PWBCodeRewriteVisitorTest >> testVisitReturnMethodWithParamInvocation [
	| ast |
	ast := parser returnStatement
		parse: 'return this.my_uo.myFunc(5,"allo")'.
	self
		assert: (visitor visit: ast) stream
		equals: 'this.my_uo.myFunc(5,"allo")'
]

{ #category : #tests }
PWBCodeRewriteVisitorTest >> testVisitReturnOperation [
	| ast |
	ast := parser returnStatement parse: 'return myFun() +10'.
	self assert: (visitor visit: ast) stream equals: 'myFun() + 10'
]

{ #category : #tests }
PWBCodeRewriteVisitorTest >> testVisitReturnSignNumber [
	| ast |
	ast := parser returnStatement parse: 'return -1'.
	self assert: (visitor visit: ast) stream equals: '-1'
]

{ #category : #tests }
PWBCodeRewriteVisitorTest >> testVisitReturnVariable [
	| ast |
	ast := parser returnStatement parse: 'return ll_var'.
	self assert: (visitor visit: ast) stream equals: 'll_var'
]

{ #category : #tests }
PWBCodeRewriteVisitorTest >> testVisitReturnVariableNameEndingWithReturn [
	| ast |
	ast := parser returnStatement parse: 'return ll_return'.
	self assert: (visitor visit: ast) stream equals: 'll_return'
]
