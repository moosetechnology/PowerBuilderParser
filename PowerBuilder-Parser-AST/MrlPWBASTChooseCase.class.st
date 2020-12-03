Class {
	#name : #MrlPWBASTChooseCase,
	#superclass : #Object,
	#instVars : [
		'expression',
		'cases',
		'caseElse',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTChooseCase >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expression = anObject expression
		and: [ cases = anObject cases
				and: [ caseElse = anObject caseElse
						and: [ startPosition = anObject startPosition
								and: [ stopPosition = anObject stopPosition ] ] ] ]
]

{ #category : #accessing }
MrlPWBASTChooseCase >> caseElse [
	^ caseElse
]

{ #category : #accessing }
MrlPWBASTChooseCase >> caseElse: anObject [
	caseElse := anObject
]

{ #category : #accessing }
MrlPWBASTChooseCase >> cases [
	^ cases
]

{ #category : #accessing }
MrlPWBASTChooseCase >> cases: anObject [
	cases := anObject
]

{ #category : #accessing }
MrlPWBASTChooseCase >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTChooseCase >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
MrlPWBASTChooseCase >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor:
			(cases hash
				bitXor: (caseElse hash bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
MrlPWBASTChooseCase >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTChooseCase >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTChooseCase >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTChooseCase >> stopPosition: anObject [
	stopPosition := anObject
]
