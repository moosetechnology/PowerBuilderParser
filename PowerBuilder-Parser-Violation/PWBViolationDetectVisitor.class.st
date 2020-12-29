Class {
	#name : #PWBViolationDetectVisitor,
	#superclass : #PWBASTAbstractVisitor,
	#instVars : [
		'violations',
		'limit',
		'preprocessingMap',
		'file',
		'currentLibrary',
		'currentBehavior'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #accessing }
PWBViolationDetectVisitor >> addViolation: aPWBQueryLimitRuleViolation [
	violations add: aPWBQueryLimitRuleViolation
]

{ #category : #accessing }
PWBViolationDetectVisitor >> currentLibrary: aFamixPWBLibrary [
	currentLibrary := aFamixPWBLibrary
]

{ #category : #accessing }
PWBViolationDetectVisitor >> file [
	^ file
]

{ #category : #accessing }
PWBViolationDetectVisitor >> file: anObject [
	file := anObject
]

{ #category : #initialization }
PWBViolationDetectVisitor >> initialize [
	super initialize.
	limit := '99999'.
	violations := OrderedCollection new
]

{ #category : #initialization }
PWBViolationDetectVisitor >> preprocessedFile: aFile [
	self
		file:
			(aFile pathString
				copyReplaceAll: aFile basename
				with: 'cleaned/' , aFile basename) asFileReference
]

{ #category : #initialization }
PWBViolationDetectVisitor >> preprocessingMap [
	^ preprocessingMap
]

{ #category : #accessing }
PWBViolationDetectVisitor >> preprocessingMap: anObject [
	preprocessingMap := anObject
]

{ #category : #resolution }
PWBViolationDetectVisitor >> resolveUnresolvedReferences [

]

{ #category : #helpers }
PWBViolationDetectVisitor >> unpreprocessedFile [
	| separator |
	separator := Smalltalk os filePathSeparator.
	^ (self file fullName copyReplaceAll: separator , 'cleaned' with: '')
		asFileReference
]

{ #category : #helpers }
PWBViolationDetectVisitor >> unpreprocessedPosition: anInteger [
	^ preprocessingMap
		at: file fullName
		ifPresent: [ :found | anInteger + found ]
		ifAbsent: [ anInteger ]
]

{ #category : #accessing }
PWBViolationDetectVisitor >> violations [
	^ violations
]

{ #category : #visiting }
PWBViolationDetectVisitor >> visitPWBASTFunctionDefinition: aPWBASTFunctionDefinition [
	| functionName |
	functionName := self
		visit: aPWBASTFunctionDefinition functionSignature.
	currentBehavior := (FamixPWBFunction named: functionName)
		sourceAnchor:
			(FamixPWBIndexedFileAnchor new
				startPos:
					(self unpreprocessedPosition: aPWBASTFunctionDefinition startPosition);
				endPos: (self unpreprocessedPosition: aPWBASTFunctionDefinition stopPosition))
]

{ #category : #visiting }
PWBViolationDetectVisitor >> visitPWBASTFunctionSignature: aPWBASTFunctionSignature [
	^ self visit: aPWBASTFunctionSignature identifier
]

{ #category : #visiting }
PWBViolationDetectVisitor >> visitPWBASTNumber: anPWBASTNumber [
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

{ #category : #visiting }
PWBViolationDetectVisitor >> visitPWBASTSubroutineDefinition: aPWBASTSubroutineDefinition [
	| subroutineName |
	subroutineName := self
		visit: aPWBASTSubroutineDefinition subroutineSignature.
	currentBehavior := (FamixPWBSubRoutine named: subroutineName)
		sourceAnchor:
			(FamixPWBIndexedFileAnchor new
				startPos:
					(self
						unpreprocessedPosition: aPWBASTSubroutineDefinition startPosition);
				endPos:
					(self unpreprocessedPosition: aPWBASTSubroutineDefinition stopPosition))
]

{ #category : #visiting }
PWBViolationDetectVisitor >> visitPWBASTSubroutineSignature: aPWBASTSubroutineSignature [
	^ self visit: aPWBASTSubroutineSignature identifier
]
