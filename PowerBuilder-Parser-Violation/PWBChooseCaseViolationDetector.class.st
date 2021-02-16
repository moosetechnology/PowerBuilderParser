Class {
	#name : #PWBChooseCaseViolationDetector,
	#superclass : #PWBAbstractViolationDetectVisitor,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #visiting }
PWBChooseCaseViolationDetector >> visitPWBASTChooseCase: aPWBASTChooseCase [
	self halt.
	self visitAll: aPWBASTChooseCase cases.
	self visit: aPWBASTChooseCase caseElse
]
