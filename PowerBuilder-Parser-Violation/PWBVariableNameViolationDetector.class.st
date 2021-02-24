Class {
	#name : #PWBVariableNameViolationDetector,
	#superclass : #PWBAbstractViolationDetectVisitor,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #visiting }
PWBVariableNameViolationDetector >> verifyNode: aPWBASTNode begin: aString [
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
PWBVariableNameViolationDetector >> visitAll: childrenNodes [
	^ childrenNodes
		ifNotNil: [ childrenNodes collect: [ :aChildNode | self visit: aChildNode ] ]
]

{ #category : #visiting }
PWBVariableNameViolationDetector >> visitPWBASTArgument: aPWBASTArgument [
	| name |
	name := self visit: aPWBASTArgument identifier.
	(name beginsWith: 'a')
		ifFalse: [ self
				addViolation:
					(PWBVariableNameViolation new
						value: name;
						file: self unpreprocessedFile;
						startPosition: (self unpreprocessedPosition: aPWBASTArgument startPosition);
						stopPosition: (self unpreprocessedPosition: aPWBASTArgument stopPosition);
						libray: currentLibrary;
						behavior: currentBehavior;
						reportMessageForArgumentName) ]
]

{ #category : #visiting }
PWBVariableNameViolationDetector >> visitPWBASTAttribute: aPWBASTAttribute [
	^ self visit: aPWBASTAttribute variableDeclarations
]

{ #category : #visiting }
PWBVariableNameViolationDetector >> visitPWBASTAttributes: aPWBASTAttributes [
	^ self visitAll: aPWBASTAttributes attributes
]

{ #category : #visiting }
PWBVariableNameViolationDetector >> visitPWBASTGlobalVariables: aPWBASTGlobalVariables [
	(self verifyNode: aPWBASTGlobalVariables begin: 'g')
		do: [ :each | 
			each reportMessageForGlobalVariableName.
			self addViolation: each ]
]

{ #category : #visiting }
PWBVariableNameViolationDetector >> visitPWBASTSharedVariables: aPWBASTSharedVariables [
	(self verifyNode: aPWBASTSharedVariables begin: 's')
		do: [ :each | 
			each reportMessageForSharedVariableName.
			self addViolation: each ]
]

{ #category : #visiting }
PWBVariableNameViolationDetector >> visitPWBASTTypeVariable: aPWBASTTypeVariable [
	(self verifyNode: aPWBASTTypeVariable begin: 'i')
		do: [ :each | 
			each reportMessageForInstanceVariableName.
			self addViolation: each ]
]

{ #category : #helpers }
PWBVariableNameViolationDetector >> visitPWBASTVariable: aPWBASTVariable [
	^ self visit: aPWBASTVariable identifier
]

{ #category : #helpers }
PWBVariableNameViolationDetector >> visitPWBASTVariableAssignation: aPWBASTVariableAssignation [
	^ self visit: aPWBASTVariableAssignation variable
]

{ #category : #visiting }
PWBVariableNameViolationDetector >> visitPWBASTVariableDeclarations: aPWBASTVariableDeclarations [
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
									(PWBVariableNameViolation new
										value: var;
										file: self unpreprocessedFile;
										startPosition:
											(self
												unpreprocessedPosition: aPWBASTVariableDeclarations startPosition);
										stopPosition:
											(self unpreprocessedPosition: aPWBASTVariableDeclarations stopPosition);
										libray: currentLibrary;
										behavior: currentBehavior;
										reportMessageForLocalVariableName;
										yourself) ] ] ]
]
