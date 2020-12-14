Class {
	#name : #PWBFASTImporter,
	#superclass : #MooseAbstractImporter,
	#instVars : [
		'mooseModel',
		'sourceCode',
		'visitor'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #private }
PWBFASTImporter >> basicRun [ 
	| result |
	result := PWBCommonParser new
		parse: self sourceCode rule: #functionDeclaration.
	^result isPetit2Failure
		ifFalse: [ result acceptVisitor: visitor ] 
		ifTrue: [ nil ]
]

{ #category : #accessing }
PWBFASTImporter >> description [
	^'Importing PowerBuilder function'

]

{ #category : #accessing }
PWBFASTImporter >> initialize [
	super initialize.
	visitor := nil.
	sourceCode := ''
]

{ #category : #accessing }
PWBFASTImporter >> length [
	"This importer is not intended to display progress"
	self shouldNotImplement 
]

{ #category : #accessing }
PWBFASTImporter >> mooseModel [
	^mooseModel 
]

{ #category : #accessing }
PWBFASTImporter >> mooseModel: aModel [
	mooseModel := aModel 
]

{ #category : #private }
PWBFASTImporter >> setUp [ 
	super setUp.
	visitor ifNil: [ visitor := PWBFASTVisitor new ]
]

{ #category : #accessing }
PWBFASTImporter >> sourceCode [
	^ sourceCode
]

{ #category : #accessing }
PWBFASTImporter >> sourceCode: anObject [
	sourceCode := anObject
]

{ #category : #accessing }
PWBFASTImporter >> visitor [
	^ visitor
]

{ #category : #accessing }
PWBFASTImporter >> visitor: anObject [
	visitor := anObject
]
