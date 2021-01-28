Class {
	#name : #PWBQueryLimitViolationDetector,
	#superclass : #PWBAbstractViolationDetectVisitor,
	#instVars : [
		'limit'
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
					(PWBQueryLimitRuleViolation new
						file: self unpreprocessedFile;
						startPosition: (self unpreprocessedPosition: anPWBASTNumber startPosition);
						stopPosition: (self unpreprocessedPosition: anPWBASTNumber stopPosition);
						libray: currentLibrary;
						behavior: currentBehavior;
						yourself) ]
]
