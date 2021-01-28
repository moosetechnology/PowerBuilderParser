Class {
	#name : #PWBVariableNameViolationDetector,
	#superclass : #PWBAbstractViolationDetectVisitor,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #visiting }
PWBVariableNameViolationDetector >> verifyNode: aPWBASTNode begin: aString violationClass: aPWBViolationClass [
	| attributes |
	attributes := (self visit: aPWBASTNode attributes) flatten.
	attributes
		do: [ :att | 
			(att asLowercase beginsWith: aString)
				ifFalse: [ self
						addViolation:
							(aPWBViolationClass new
								value: att;
								file: self unpreprocessedFile;
								startPosition: (self unpreprocessedPosition: aPWBASTNode startPosition);
								stopPosition: (self unpreprocessedPosition: aPWBASTNode stopPosition);
								libray: currentLibrary;
								yourself) ] ]
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
					(PWBArgumentNameRuleViolation new
						value: name;
						file: self unpreprocessedFile;
						startPosition: (self unpreprocessedPosition: aPWBASTArgument startPosition);
						stopPosition: (self unpreprocessedPosition: aPWBASTArgument stopPosition);
						libray: currentLibrary;
						behavior: currentBehavior;
						yourself) ]
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
	self
		verifyNode: aPWBASTGlobalVariables
		begin: 'g'
		violationClass: PWBGlobalVariableNameRuleViolation
]

{ #category : #visiting }
PWBVariableNameViolationDetector >> visitPWBASTSharedVariables: aPWBASTSharedVariables [
	self
		verifyNode: aPWBASTSharedVariables
		begin: 's'
		violationClass: PWBSharedVariableNameRuleViolation
]

{ #category : #visiting }
PWBVariableNameViolationDetector >> visitPWBASTTypeVariable: aPWBASTTypeVariable [
	self
		verifyNode: aPWBASTTypeVariable
		begin: 'i'
		violationClass: PWBInstanceVariableNameRuleViolation
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
									(PWBLocalVariableNameRuleViolation new
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
