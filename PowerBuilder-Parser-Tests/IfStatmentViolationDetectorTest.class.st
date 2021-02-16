Class {
	#name : #IfStatmentViolationDetectorTest,
	#superclass : #PWBAbtractViolationDetectVisitorTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #tests }
IfStatmentViolationDetectorTest >> testSingleLineIfStatement [
	| ast |
	ast := parser ifStatement parse: 'if alpha = true then dosomething'.
	self assert: (visitor visit: ast) violations size equals: 1
]

{ #category : #tests }
IfStatmentViolationDetectorTest >> testSingleLineIfStatement1 [
	| ast |
	ast := parser ifStatement parse: 'if alpha = true then dosomething else dosomthingelse'.
	self assert: (visitor visit: ast) violations size equals: 1
]
