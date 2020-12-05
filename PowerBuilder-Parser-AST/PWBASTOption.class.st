Class {
	#name : #PWBASTOption,
	#superclass : #Object,
	#instVars : [
		'option',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTOption >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ option = anObject option
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTOption >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTOption: self
]

{ #category : #accessing }
PWBASTOption >> access [
	^ access
]

{ #category : #accessing }
PWBASTOption >> access: anObject [
	access := anObject
]

{ #category : #accessing }
PWBASTOption >> assignationStatement [
	^ assignationStatement
]

{ #category : #accessing }
PWBASTOption >> assignationStatement: anObject [
	assignationStatement := anObject
]

{ #category : #comparing }
PWBASTOption >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ option hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTOption >> option [
	^ option
]

{ #category : #accessing }
PWBASTOption >> option: anObject [
	option := anObject
]

{ #category : #accessing }
PWBASTOption >> optionValue [
	^ optionValue
]

{ #category : #accessing }
PWBASTOption >> optionValue: anObject [
	optionValue := anObject
]

{ #category : #accessing }
PWBASTOption >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTOption >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTOption >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTOption >> stopPosition: anObject [
	stopPosition := anObject
]
