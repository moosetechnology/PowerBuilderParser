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
PWBQueryLimitViolationDetector >> visitPWBASTNumber: anPWBASTNumber [
	(anPWBASTNumber number beginsWith: limit)
		ifTrue: [ self
				addViolation:
					(PWBLimitRuleViolation new
						value: anPWBASTNumber number;
						file: self unpreprocessedFile;
						startPosition: (self unpreprocessedPosition: anPWBASTNumber startPosition);
						stopPosition: (self unpreprocessedPosition: anPWBASTNumber stopPosition);
						libray: currentLibrary;
						behavior: currentBehavior;
						reportMessageFor9999;
						yourself) ]
]
