Class {
	#name : #PWBIfStatementViolationDetector,
	#superclass : #PWBAbstractViolationDetectVisitor,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #visiting }
PWBIfStatementViolationDetector >> visitPWBASTIfSingleLine: aPWBASTIfSingleLine [
	self
		addViolation:
			(PWBSingleLineIfStatementRuleViolation new
				file: self unpreprocessedFile;
				startPosition: (self unpreprocessedPosition: aPWBASTIfSingleLine startPosition);
				stopPosition: (self unpreprocessedPosition: aPWBASTIfSingleLine stopPosition);
				libray: currentLibrary;
				behavior: currentBehavior;
				yourself)
]

{ #category : #visiting }
PWBIfStatementViolationDetector >> visitPWBASTIfStatement: aPWBASTIfStatement [
	^ self visit: aPWBASTIfStatement ifStatement
]
