"
A visitor that rewrites the petitParser AST as PowerBuilder code on a stream.

The first goal is to get ""chain of identifiers"" expressions (""a.b.c()"") in source code format without resorting to source anchors which imply reading a file (slow))
"
Class {
	#name : #PWBCodeRewriteVisitor,
	#superclass : #PWBASTAbstractVisitor,
	#instVars : [
		'stream'
	],
	#category : #'PowerBuilder-Importer-Visitors'
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
PWBCodeRewriteVisitor >> visitPWBASTDot: aPWBASTDot [
	stream << aPWBASTDot dot
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
PWBCodeRewriteVisitor >> visitPWBASTString: aPWBASTString [
	stream << aPWBASTString string
]

{ #category : #visiting }
PWBCodeRewriteVisitor >> visitPWBASTUncheckedIdentifier: aPWBASTUncheckedIdentifier [
	stream << aPWBASTUncheckedIdentifier uncheckedIdentifier
]