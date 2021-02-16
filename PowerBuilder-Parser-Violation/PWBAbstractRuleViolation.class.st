Class {
	#name : #PWBAbstractRuleViolation,
	#superclass : #Object,
	#instVars : [
		'file',
		'startPosition',
		'stopPosition',
		'library',
		'behavior',
		'report',
		'value',
		'severty'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #accessing }
PWBAbstractRuleViolation >> behavior [
	^ behavior
]

{ #category : #accessing }
PWBAbstractRuleViolation >> behavior: aFamixPWBBehavior [
	behavior := aFamixPWBBehavior
]

{ #category : #accessing }
PWBAbstractRuleViolation >> behaviorName [
	^ self behavior name
]

{ #category : #accessing }
PWBAbstractRuleViolation >> file [
	^ file
]

{ #category : #accessing }
PWBAbstractRuleViolation >> file: aFileReference [
	file := aFileReference
]

{ #category : #testing }
PWBAbstractRuleViolation >> isNameViolation [
	^ false
]

{ #category : #'as yet unclassified' }
PWBAbstractRuleViolation >> isReportCrossCommitViolation [
	^ false
]

{ #category : #testing }
PWBAbstractRuleViolation >> isSameAs: aPWBViolation [
	^ self class = aPWBViolation class
		and: [ self file basename = aPWBViolation file basename
				and: [ self value = aPWBViolation value ] ]
]

{ #category : #accessing }
PWBAbstractRuleViolation >> libray: aFamixPWBLibrary [
	library := aFamixPWBLibrary
]

{ #category : #accessing }
PWBAbstractRuleViolation >> objectName [
	^ self file basenameWithoutExtension
]

{ #category : #accessing }
PWBAbstractRuleViolation >> pwbobjectName [
	^ self file basenameWithoutExtension
]

{ #category : #accessing }
PWBAbstractRuleViolation >> relativeLine [
	| contents |
	contents := self file contents.
	^ (contents lineNumberCorrespondingToIndex: self startPosition)
		-
			(contents
				lineNumberCorrespondingToIndex: self behavior sourceAnchor startPos)
]

{ #category : #'as yet unclassified' }
PWBAbstractRuleViolation >> reportOn: stream [
	stream << report value
]

{ #category : #accessing }
PWBAbstractRuleViolation >> severty [
	^ severty
]

{ #category : #accessing }
PWBAbstractRuleViolation >> severty: aString [
	severty := aString
]

{ #category : #accessing }
PWBAbstractRuleViolation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBAbstractRuleViolation >> startPosition: anInteger [
	startPosition := anInteger
]

{ #category : #accessing }
PWBAbstractRuleViolation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBAbstractRuleViolation >> stopPosition: anInteger [
	stopPosition := anInteger
]

{ #category : #accessing }
PWBAbstractRuleViolation >> value [
	^ value
]

{ #category : #accessing }
PWBAbstractRuleViolation >> value: aString [
	value := aString
]
