Class {
	#name : #PWBAbstractViolationDetectVisitor,
	#superclass : #PWBASTAbstractVisitor,
	#instVars : [
		'violations',
		'preprocessingMap',
		'file',
		'currentLibrary',
		'currentBehavior',
		'parentVisitor',
		'constraints'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'instance creation' }
PWBAbstractViolationDetectVisitor class >> newFrom: parentVisitor [
	^ self new
		parentVisitor: parentVisitor;
		yourself
]

{ #category : #initialization }
PWBAbstractViolationDetectVisitor >> accept: const [
	^ {'LimitDetectRestriction'}
		anySatisfy: [ :each | each = const restrictionName ]
]

{ #category : #adding }
PWBAbstractViolationDetectVisitor >> addConstraint: aConstraint [
	constraints
		detect: [ :const | const restrictionName = aConstraint restrictionName ]
		ifNone: [ constraints add: aConstraint ]
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
		constraints: constraints;
		violations: self violations;
		file: self file;
		preprocessingMap: self preprocessingMap;
		currentLibrary: self currentLibrary;
		currentBehavior: self currentBehavior;
		visit: aNode
]

{ #category : #initialization }
PWBAbstractViolationDetectVisitor >> constraints: aCollection [
	constraints
		addAll: (aCollection select: [ :const | self accept: const ])
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
	violations := OrderedCollection new.
	constraints := OrderedCollection new
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
PWBAbstractViolationDetectVisitor >> visitPWBASTArgument: aPWBASTArgument [
	self
		auxiliaryVisitor: PWBVariableViolationDetector
		visit: aPWBASTArgument
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTChooseCase: aPWBASTChooseCase [
	self
		auxiliaryVisitor: PWBChooseCaseViolationDetector
		visit: aPWBASTChooseCase
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
	currentBehavior := FamixPWBFunction new
		sourceAnchor:
			(FamixPWBIndexedFileAnchor new
				startPos: (self unpreprocessedPosition: aPWBASTFunctionDefinition startPosition);
				endPos: (self unpreprocessedPosition: aPWBASTFunctionDefinition stopPosition)).
	self visit: aPWBASTFunctionDefinition functionSignature.
	self visit: aPWBASTFunctionDefinition statements.
	currentBehavior := nil
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTFunctionSignature: aPWBASTFunctionSignature [
	self
		auxiliaryVisitor: PWBQueryLimitViolationDetector
		visit: aPWBASTFunctionSignature
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTGlobalVariables: aPWBASTGlobalVariables [
	self
		auxiliaryVisitor: PWBVariableViolationDetector
		visit: aPWBASTGlobalVariables
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTIfStatement: aPWBASTIfStatement [
	self
		auxiliaryVisitor: PWBIfStatementViolationDetector
		visit: aPWBASTIfStatement."

	self visit: aPWBASTIfStatement ifStatement"
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTNumber: aPWBASTNumber [
	self
		auxiliaryVisitor: PWBQueryLimitViolationDetector
		visit: aPWBASTNumber
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTRegularMethodInvocation: aPWBASTRegularMethodInvocation [
	self
		auxiliaryVisitor: PWBQueryLimitViolationDetector
		visit: aPWBASTRegularMethodInvocation
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTSharedVariables: aPWBASTSharedVariables [
	self
		auxiliaryVisitor: PWBVariableViolationDetector
		visit: aPWBASTSharedVariables
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTSubroutineDefinition: aPWBASTSubroutineDefinition [
	currentBehavior := FamixPWBSubRoutine new
		sourceAnchor:
			(FamixPWBIndexedFileAnchor new
				startPos:
					(self
						unpreprocessedPosition: aPWBASTSubroutineDefinition startPosition);
				endPos:
					(self unpreprocessedPosition: aPWBASTSubroutineDefinition stopPosition)).
	self visit: aPWBASTSubroutineDefinition subroutineSignature.
	self visit: aPWBASTSubroutineDefinition statements.
	currentBehavior := nil
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTSubroutineSignature: aPWBASTSubroutineSignature [
	self
		auxiliaryVisitor: PWBQueryLimitViolationDetector
		visit: aPWBASTSubroutineSignature
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTTypeVariable: aPWBASTTypeVariable [
	self
		auxiliaryVisitor: PWBVariableViolationDetector
		visit: aPWBASTTypeVariable
]

{ #category : #visiting }
PWBAbstractViolationDetectVisitor >> visitPWBASTVariableDeclarations: aPWBASTVariableDeclarations [
	self
		auxiliaryVisitor: PWBVariableViolationDetector
		visit: aPWBASTVariableDeclarations
]
