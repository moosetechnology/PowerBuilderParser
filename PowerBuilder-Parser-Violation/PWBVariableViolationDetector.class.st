Class {
	#name : #PWBVariableViolationDetector,
	#superclass : #PWBAbstractViolationDetectVisitor,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #visiting }
PWBVariableViolationDetector >> verifyNode: aPWBASTNode begin: aString [
	| attributes detectedViolations |
	aPWBASTNode attributes ifNil: [ ^ #() ].
	attributes := (self visit: aPWBASTNode attributes) flatten.
	detectedViolations := OrderedCollection new: attributes size.
	attributes
		do: [ :att | 
			(att asLowercase beginsWith: aString)
				ifFalse: [ detectedViolations
						add:
							(PWBVariableNameViolation new
								value: att;
								file: self unpreprocessedFile;
								startPosition: (self unpreprocessedPosition: aPWBASTNode startPosition);
								stopPosition: (self unpreprocessedPosition: aPWBASTNode stopPosition);
								libray: currentLibrary;
								yourself) ] ].
	^ detectedViolations
]

{ #category : #helpers }
PWBVariableViolationDetector >> visitAll: childrenNodes [
	^ childrenNodes
		ifNotNil: [ childrenNodes collect: [ :aChildNode | self visit: aChildNode ] ]
]

{ #category : #visiting }
PWBVariableViolationDetector >> visitPWBASTArgument: aPWBASTArgument [
	| name |
	name := self visit: aPWBASTArgument identifier.
	(name beginsWith: 'a')
		ifFalse: [ self
				addViolation:
					(PWBArgumentNameViolation new
						value: name;
						file: self unpreprocessedFile;
						startPosition: (self unpreprocessedPosition: aPWBASTArgument startPosition);
						stopPosition: (self unpreprocessedPosition: aPWBASTArgument stopPosition);
						libray: currentLibrary;
						behavior: currentBehavior) ]
]

{ #category : #visiting }
PWBVariableViolationDetector >> visitPWBASTAttribute: aPWBASTAttribute [
	^ self visit: aPWBASTAttribute variableDeclarations
]

{ #category : #visiting }
PWBVariableViolationDetector >> visitPWBASTAttributes: aPWBASTAttributes [
	^ self visitAll: aPWBASTAttributes attributes
]

{ #category : #visiting }
PWBVariableViolationDetector >> visitPWBASTExpressionTerm: aPWBASTExpressionTerm [
	^ self visit: aPWBASTExpressionTerm expressionTerm
]

{ #category : #visiting }
PWBVariableViolationDetector >> visitPWBASTGlobalVariables: aPWBASTGlobalVariables [
	(self verifyNode: aPWBASTGlobalVariables begin: 'g')
		do: [ :each | 
			each asGlobalVariableNameViolation.
			self addViolation: each ]
]

{ #category : #visiting }
PWBVariableViolationDetector >> visitPWBASTSharedVariables: aPWBASTSharedVariables [
	(self verifyNode: aPWBASTSharedVariables begin: 's')
		do: [ :each | 
			each asSharedVariableNameViolation.
			self addViolation: each ]
]

{ #category : #visiting }
PWBVariableViolationDetector >> visitPWBASTTypeVariable: aPWBASTTypeVariable [
	(self verifyNode: aPWBASTTypeVariable begin: 'i')
		do: [ :each | 
			each asInstanceVariableNameViolation.
			self addViolation: each ]
]

{ #category : #helpers }
PWBVariableViolationDetector >> visitPWBASTVariable: aPWBASTVariable [
	^ self visit: aPWBASTVariable identifier
]

{ #category : #helpers }
PWBVariableViolationDetector >> visitPWBASTVariableAssignation: aPWBASTVariableAssignation [
	| assignationText |
	assignationText := self file contents
		copyFrom: aPWBASTVariableAssignation startPosition
		to: aPWBASTVariableAssignation stopPosition.
	(assignationText trim copyReplaceAll: ' ' with: '') = 'dataobject=""'
		ifTrue: [ self
				addViolation:
					(PWBDataobjectRuleViolation new
						value: assignationText;
						file: self unpreprocessedFile;
						startPosition:
							(self unpreprocessedPosition: aPWBASTVariableAssignation startPosition);
						stopPosition: (self unpreprocessedPosition: aPWBASTVariableAssignation stopPosition);
						libray: currentLibrary;
						yourself) ].
	self visit: aPWBASTVariableAssignation assignation.
	^ self visit: aPWBASTVariableAssignation variable
]

{ #category : #visiting }
PWBVariableViolationDetector >> visitPWBASTVariableDeclarations: aPWBASTVariableDeclarations [
	| variables |
	variables := self
		visitAll: aPWBASTVariableDeclarations variableAssignations.
	currentBehavior
		ifNil: [ ^ variables ]
		ifNotNil: [ variables
				do: [ :var | 
					(var asLowercase beginsWith: 'l')
						ifFalse: [ self
								addViolation:
									(PWBLocalVariableNameViolation new
										value: var;
										file: self unpreprocessedFile;
										startPosition:
											(self
												unpreprocessedPosition: aPWBASTVariableDeclarations startPosition);
										stopPosition:
											(self unpreprocessedPosition: aPWBASTVariableDeclarations stopPosition);
										libray: currentLibrary;
										behavior: currentBehavior;
										yourself) ] ] ]
]
