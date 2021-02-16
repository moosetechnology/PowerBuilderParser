Class {
	#name : #PWBChooseCaseViolationDetector,
	#superclass : #PWBAbstractViolationDetectVisitor,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #visiting }
PWBChooseCaseViolationDetector >> visitPWBASTChooseCase: aPWBASTChooseCase [
	| nbCases |
	nbCases := aPWBASTChooseCase cases size.
	aPWBASTChooseCase caseElse isNil
		ifTrue: [ self
				addViolation:
					(PWBChooseCaseRuleViolation new
						file: self unpreprocessedFile;
						startPosition: (self unpreprocessedPosition: aPWBASTChooseCase startPosition);
						stopPosition: (self unpreprocessedPosition: aPWBASTChooseCase stopPosition);
						libray: currentLibrary;
						behavior: currentBehavior;
						reportMessageForChooseWithoutElseCase;
						yourself) ]
		ifFalse: [ nbCases := nbCases + 1 ].
	nbCases >= 10
		ifTrue: [ self
				addViolation:
					(PWBChooseCaseRuleViolation new
						value: nbCases;
						file: self unpreprocessedFile;
						startPosition: (self unpreprocessedPosition: aPWBASTChooseCase startPosition);
						stopPosition: (self unpreprocessedPosition: aPWBASTChooseCase stopPosition);
						libray: currentLibrary;
						behavior: currentBehavior;
						reportMessageForNumberOfCase;
						yourself) ]
]
