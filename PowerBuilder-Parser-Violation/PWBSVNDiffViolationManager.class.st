Class {
	#name : #PWBSVNDiffViolationManager,
	#superclass : #Object,
	#instVars : [
		'head',
		'prev'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager class >> prev: aPrevViolations head: aHeadViolations [
	^ self new prev: aPrevViolations head: aHeadViolations
]

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager >> diffHeadPrev [
	^ self head
		select:
			[ :violation | self prev allSatisfy: [ :each | (violation isSameAs: each) not ] ]
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> head [
	^ head
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> head: anObject [
	head := anObject
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> prev [
	^ prev
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> prev: anObject [
	prev := anObject
]

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager >> prev: aPrevViolations head: aHeadViolations [
	prev := aPrevViolations.
	head := aHeadViolations
]
