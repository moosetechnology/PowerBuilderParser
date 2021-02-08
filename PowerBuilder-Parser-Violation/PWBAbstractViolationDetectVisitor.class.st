Class {
	#name : #PWBAbstractViolationDetectVisitor,
	#superclass : #PWBASTAbstractVisitor,
	#instVars : [
		'violations',
		'preprocessingMap',
		'file',
		'currentLibrary',
		'currentBehavior',
		'parentVisitor'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'instance creation' }
PWBAbstractViolationDetectVisitor class >> newFrom: parentVisitor [
	^ self new
		parentVisitor: parentVisitor;
		yourself
]

{ #category : #accessing }
PWBAbstractViolationDetectVisitor >> addViolation: aPWBQueryLimitRuleViolation [
	violations add: aPWBQueryLimitRuleViolation
]

{ #category : #'as yet unclassified' }
PWBAbstractViolationDetectVisitor >> auxiliaryVisitor: aPWBAuxiliaryVisitorClass [
	^ aPWBAuxiliaryVisitorClass newFrom: self
]

{ #category : #'as yet unclassified' }
PWBAbstractViolationDetectVisitor >> auxiliaryVisitor: aPWBVisitorClass visit: aNode [
	^ (self auxiliaryVisitor: aPWBVisitorClass)
		violations: self violations;
		file: self file;
		preprocessingMap: self preprocessingMap;
		currentLibrary: self currentLibrary;
		currentBehavior: self currentBehavior;
		visit: aNode
]

{ #category : #accessing }
PWBAbstractViolationDetectVisitor >> currentBehavior [
	^ currentBehavior
]

{ #category : #accessing }
PWBAbstractViolationDetectVisitor >> currentBehavior: anObject [
	currentBehavior := anObject
]

{ #category : #accessing }
PWBAbstractViolationDetectVisitor >> currentLibrary [
	^ currentLibrary
]

{ #category : #accessing }
PWBAbstractViolationDetectVisitor >> currentLibrary: aFamixPWBLibrary [
	currentLibrary := aFamixPWBLibrary
]

{ #category : #accessing }
PWBAbstractViolationDetectVisitor >> file [
	^ file
]

{ #category : #accessing }
PWBAbstractViolationDetectVisitor >> file: anObject [
	file := anObject
]

{ #category : #initialization }
PWBAbstractViolationDetectVisitor >> initialize [
	super initialize.
	violations := OrderedCollection new
]

{ #category : #accessing }
PWBAbstractViolationDetectVisitor >> parentVisitor [
	^ parentVisitor
]

{ #category : #accessing }
PWBAbstractViolationDetectVisitor >> parentVisitor: aParentVisitor [
	parentVisitor := aParentVisitor
]

{ #category : #initialization }
PWBAbstractViolationDetectVisitor >> preprocessedFile: aFile [
	self
		file:
			(aFile pathString
				copyReplaceAll: aFile basename
				with: 'cleaned/' , aFile basename) asFileReference
]

{ #category : #initialization }
PWBAbstractViolationDetectVisitor >> preprocessingMap [
	^ preprocessingMap
]

{ #category : #accessing }
PWBAbstractViolationDetectVisitor >> preprocessingMap: anObject [
	preprocessingMap := anObject
]

{ #category : #helpers }
PWBAbstractViolationDetectVisitor >> unpreprocessedFile [
	| separator |
	separator := Smalltalk os filePathSeparator.
	^ (self file fullName copyReplaceAll: separator , 'cleaned' with: '')
		asFileReference
]

{ #category : #helpers }
PWBAbstractViolationDetectVisitor >> unpreprocessedPosition: anInteger [
	^ preprocessingMap
		at: file fullName
		ifPresent: [ :found | anInteger + found ]
		ifAbsent: [ anInteger ]
]

{ #category : #accessing }
PWBAbstractViolationDetectVisitor >> violations [
	^ violations
]

{ #category : #accessing }
PWBAbstractViolationDetectVisitor >> violations: anObject [
	violations := anObject
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTEventDeclaration: aPWBASTEventDeclaration [
	| eventName |
	eventName := self visit: aPWBASTEventDeclaration eventReferenceName.
	currentBehavior := (FamixPWBEvent named: eventName)
		sourceAnchor:
			(FamixPWBIndexedFileAnchor new
				startPos: (self unpreprocessedPosition: aPWBASTEventDeclaration startPosition);
				endPos: (self unpreprocessedPosition: aPWBASTEventDeclaration stopPosition)).
	self visit: aPWBASTEventDeclaration statements.
	currentBehavior := nil
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTEventReferenceName: aPWBASTEventReferenceName [
	^ self visit: aPWBASTEventReferenceName eventName
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTFunctionDefinition: aPWBASTFunctionDefinition [
	| functionName |
	functionName := self
		visit: aPWBASTFunctionDefinition functionSignature.
	currentBehavior := (FamixPWBFunction named: functionName)
		sourceAnchor:
			(FamixPWBIndexedFileAnchor new
				startPos: (self unpreprocessedPosition: aPWBASTFunctionDefinition startPosition);
				endPos: (self unpreprocessedPosition: aPWBASTFunctionDefinition stopPosition)).
	self visit: aPWBASTFunctionDefinition statements.
	currentBehavior := nil
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTFunctionSignature: aPWBASTFunctionSignature [
	self visit: aPWBASTFunctionSignature arguments.
	^ self visit: aPWBASTFunctionSignature identifier
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTGlobalVariables: aPWBASTGlobalVariables [
	self
		auxiliaryVisitor: PWBVariableNameViolationDetector
		visit: aPWBASTGlobalVariables
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTNumber: aPWBASTNumber [
	self
		auxiliaryVisitor: PWBQueryLimitViolationDetector
		visit: aPWBASTNumber
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTSharedVariables: aPWBASTSharedVariables [
	self
		auxiliaryVisitor: PWBVariableNameViolationDetector
		visit: aPWBASTSharedVariables
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTSubroutineDefinition: aPWBASTSubroutineDefinition [
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
					(self unpreprocessedPosition: aPWBASTSubroutineDefinition stopPosition)).
	self visit: aPWBASTSubroutineDefinition statements.
	currentBehavior := nil
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTSubroutineSignature: aPWBASTSubroutineSignature [
	^ self visit: aPWBASTSubroutineSignature identifier
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTTypeVariable: aPWBASTTypeVariable [
	self
		auxiliaryVisitor: PWBVariableNameViolationDetector
		visit: aPWBASTTypeVariable
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTVariableDeclarations: aPWBASTVariableDeclarations [
	self
		auxiliaryVisitor: PWBVariableNameViolationDetector
		visit: aPWBASTVariableDeclarations
]
