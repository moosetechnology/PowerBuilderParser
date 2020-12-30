Class {
	#name : #PWBCodeRewriteVisitor,
	#superclass : #PWBASTAbstractVisitor,
	#instVars : [
		'stream'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #initialization }
PWBCodeRewriteVisitor >> initialize [
	super initialize.
	stream := WriteStream on: String new
]

{ #category : #accessing }
PWBCodeRewriteVisitor >> stream [
	^ stream contents
]

{ #category : #visiting }
PWBCodeRewriteVisitor >> visitPWBASTArrayWithSize: aPWBASTArrayWithSize [
	stream << '['.
	aPWBASTArrayWithSize expressions
		do: [ :expression | self visit: expression ]
		separatedBy: [ stream << ',' ].
	stream << ']'
]

{ #category : #visiting }
PWBCodeRewriteVisitor >> visitPWBASTAttributeAccess: aPWBASTAttributeAccess [
	stream nextPut: $..
	self visit: aPWBASTAttributeAccess uncheckedIdentifier.
	self visit: aPWBASTAttributeAccess arrayInformation
]

{ #category : #visiting }
PWBCodeRewriteVisitor >> visitPWBASTDynamicMethodInvocation: aPWBASTDynamicMethodInvocation [
	stream nextPut: $..
	super
		visitPWBASTDynamicMethodInvocation: aPWBASTDynamicMethodInvocation
]

{ #category : #visiting }
PWBCodeRewriteVisitor >> visitPWBASTExpressionOperator: aPWBASTExpressionOperator [
	stream
		space;
		<< aPWBASTExpressionOperator expressionOperator;
		space
]

{ #category : #visiting }
PWBCodeRewriteVisitor >> visitPWBASTExpressionSign: aPWBASTExpressionSign [
	stream << aPWBASTExpressionSign expressionSign
]

{ #category : #visiting }
PWBCodeRewriteVisitor >> visitPWBASTFunctionArguments: aPWBASTFunctionArguments [
	stream << '('.
	aPWBASTFunctionArguments functionArguments
		ifNotNil: [ aPWBASTFunctionArguments functionArguments
				do: [ :argument | self visit: argument ]
				separatedBy: [ stream << ',' ] ].
	stream << ')'
]

{ #category : #visiting }
PWBCodeRewriteVisitor >> visitPWBASTIdentifier: anPWBASTIdentifier [
	stream << anPWBASTIdentifier identifier
]

{ #category : #visiting }
PWBCodeRewriteVisitor >> visitPWBASTNumber: aPWBASTNumber [
	stream << aPWBASTNumber number
]

{ #category : #visiting }
PWBCodeRewriteVisitor >> visitPWBASTRegularMethodInvocation: aPWBASTRegularMethodInvocation [
	stream nextPut: $..
	super
		visitPWBASTRegularMethodInvocation: aPWBASTRegularMethodInvocation
]

{ #category : #visiting }
PWBCodeRewriteVisitor >> visitPWBASTString: aPWBASTString [
	stream << aPWBASTString string
]

{ #category : #visiting }
PWBCodeRewriteVisitor >> visitPWBASTThis: anPWBASTThis [
	stream << anPWBASTThis this
]

{ #category : #visiting }
PWBCodeRewriteVisitor >> visitPWBASTUncheckedIdentifier: aPWBASTUncheckedIdentifier [
	stream << aPWBASTUncheckedIdentifier uncheckedIdentifier
]
