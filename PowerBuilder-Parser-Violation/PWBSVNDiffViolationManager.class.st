Class {
	#name : #PWBSVNDiffViolationManager,
	#superclass : #Object,
	#instVars : [
		'head',
		'prev',
		'stream',
		'author'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager class >> prev: aPrevViolations head: aHeadViolations [
	^ self new prev: aPrevViolations head: aHeadViolations
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> author: aString [ 
	author := aString
]

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager >> diffHeadPrev [
	^ self head
		select: [ :violation | 
			self prev
				allSatisfy:
					[ :each | (violation isSameAs: each) not or: [ violation isReportCrossCommitViolation ] ] ]
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> head [
	^ head
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> head: anObject [
	head := anObject
]

{ #category : #initialization }
PWBSVNDiffViolationManager >> initialize [
	super initialize.
	stream := WriteStream on: String new
]

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager >> prepareReport: aCollection [
	stream
		<< '<p><h3>Vous avez';
		space;
		<< aCollection size asString;
		space;
		<< 'violation'.
	aCollection size = 1
		ifFalse: [ stream nextPut: $s ].
	stream
		<< ' sur vos derniers changements qui sont:</h3><ul>';
		cr.
	aCollection do: [ :violation | violation reportOn: stream ].
	stream << '</ul></p>'
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

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager >> publishDiff [
	| diff |
	diff := self diffHeadPrev.
	diff ifNotEmpty: [ self reportViolation: diff ]
]

{ #category : #running }
PWBSVNDiffViolationManager >> reportViolation: violations [
	self prepareReport: violations.
	LibC
		resultOfCommand:
			'powershell -file "sendMail.ps1" "' , self stream , '" "' , author
				, '@sa-cim.fr"'
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> stream [
	^ stream contents
]
