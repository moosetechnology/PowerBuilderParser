Class {
	#name : #PWBASTFile,
	#superclass : #Object,
	#instVars : [
		'fileStatements'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTFile >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFile: self
]

{ #category : #accessing }
PWBASTFile >> fileStatements [
	^ fileStatements
]

{ #category : #accessing }
PWBASTFile >> fileStatements: anObject [
	fileStatements := anObject
]
