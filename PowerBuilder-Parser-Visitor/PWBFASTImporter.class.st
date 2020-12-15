Class {
	#name : #PWBFASTImporter,
	#superclass : #MooseAbstractImporter,
	#instVars : [
		'mooseModel',
		'sourceCode',
		'visitor',
		'pwbFunction'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #private }
PWBFASTImporter >> basicRun [ 
	| parser result |
	parser := PWBCommonParser new
		productionAt: #functionDefinition.
	visitor currentEntity: pwbFunction.
	result := parser parse: self sourceCode.
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

{ #category : #accessing }
PWBFASTImporter >> pwbFunction [
	^pwbFunction
]

{ #category : #accessing }
PWBFASTImporter >> pwbFunction: aPWBFunction [
	pwbFunction := aPWBFunction
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
