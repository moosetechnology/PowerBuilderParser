Class {
	#name : #PWBASTChooseCase,
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
PWBASTChooseCase >> = anObject [
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

{ #category : #visiting }
PWBASTChooseCase >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTChooseCase: self
]

{ #category : #accessing }
PWBASTChooseCase >> caseElse [
	^ caseElse
]

{ #category : #accessing }
PWBASTChooseCase >> caseElse: anObject [
	caseElse := anObject
]

{ #category : #accessing }
PWBASTChooseCase >> cases [
	^ cases
]

{ #category : #accessing }
PWBASTChooseCase >> cases: anObject [
	cases := anObject
]

{ #category : #accessing }
PWBASTChooseCase >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTChooseCase >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTChooseCase >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor:
			(cases hash
				bitXor: (caseElse hash bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
PWBASTChooseCase >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTChooseCase >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTChooseCase >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTChooseCase >> stopPosition: anObject [
	stopPosition := anObject
]
