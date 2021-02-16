Class {
	#name : #PWBQueryLimitViolationDetector,
	#superclass : #PWBAbstractViolationDetectVisitor,
	#instVars : [
		'limit',
		'caseNumber'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #visiting }
PWBQueryLimitViolationDetector >> initialize [
	super initialize.
	limit := '9999'
]

{ #category : #visiting }
PWBQueryLimitViolationDetector >> visitPWBASTFile: aPWBASTFile [
	self file content lines size >= 0
		ifTrue: [ self
				addViolation:
					(PWBSizeRuleViolation new
						file: self unpreprocessedFile;
						reportMessageForFileSize;
						yourself) ].
	self visit: aPWBASTFile content
]

{ #category : #visiting }
PWBQueryLimitViolationDetector >> visitPWBASTFunctionSignature: aPWBASTFunctionSignature [
	| argumentsSize |
	self currentBehavior
		name: (self visit: aPWBASTFunctionSignature identifier).
	self visit: aPWBASTFunctionSignature arguments.
	argumentsSize := aPWBASTFunctionSignature arguments arguments size.
	argumentsSize >= 10
		ifTrue: [ self
				addViolation:
					(PWBSizeRuleViolation new
						value: argumentsSize;
						file: self unpreprocessedFile;
						libray: currentLibrary;
						behavior: currentBehavior;
						reportMessageForBehaviorParametersSize) ]
]

{ #category : #visiting }
PWBQueryLimitViolationDetector >> visitPWBASTNumber: anPWBASTNumber [
	(anPWBASTNumber number beginsWith: limit)
		ifTrue: [ self
				addViolation:
					(PWB999RuleViolation new
						value: anPWBASTNumber number;
						file: self unpreprocessedFile;
						startPosition: (self unpreprocessedPosition: anPWBASTNumber startPosition);
						stopPosition: (self unpreprocessedPosition: anPWBASTNumber stopPosition);
						libray: currentLibrary;
						behavior: currentBehavior;
						reportMessageFor9999;
						yourself) ]
]

{ #category : #visiting }
PWBQueryLimitViolationDetector >> visitPWBASTSubroutineSignature: aPWBASTSubroutineSignature [
	| argumentsSize |
	currentBehavior
		name: (self visit: aPWBASTSubroutineSignature identifier).
	self visit: aPWBASTSubroutineSignature arguments.
	argumentsSize := aPWBASTSubroutineSignature arguments arguments size.
	argumentsSize >= 10
		ifTrue: [ self
				addViolation:
					(PWBSizeRuleViolation new
						value: argumentsSize;
						file: self unpreprocessedFile;
						libray: currentLibrary;
						behavior: currentBehavior;
						reportMessageForBehaviorParametersSize) ]
]
