Class {
	#name : #PWBChooseCaseViolationDetector,
	#superclass : #PWBAbstractViolationDetectVisitor,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #visiting }
PWBChooseCaseViolationDetector >> visitPWBASTChooseCase: aPWBASTChooseCase [
	| nbCases |
	nbCases := aPWBASTChooseCase cases size.
	aPWBASTChooseCase caseElse
		ifNil: [ self
				addViolation:
					(PWBChooseCaseWithoutElseCaseRuleViolation new
						file: self unpreprocessedFile;
						startPosition: (self unpreprocessedPosition: aPWBASTChooseCase startPosition);
						stopPosition: (self unpreprocessedPosition: aPWBASTChooseCase stopPosition);
						libray: currentLibrary;
						behavior: currentBehavior;
						reportMessageForChooseWithoutElseCase;
						yourself) ]
		ifNotNil: [ nbCases := nbCases + 1 ].
	nbCases >= 10
		ifTrue: [ self
				addViolation:
					(PWBNumberOfCaseInChooseCaseRuleViolation new
						value: nbCases;
						file: self unpreprocessedFile;
						startPosition: (self unpreprocessedPosition: aPWBASTChooseCase startPosition);
						stopPosition: (self unpreprocessedPosition: aPWBASTChooseCase stopPosition);
						libray: currentLibrary;
						behavior: currentBehavior;
						yourself) ]
]
