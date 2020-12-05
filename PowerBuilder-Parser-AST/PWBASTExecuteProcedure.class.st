Class {
	#name : #PWBASTExecuteProcedure,
	#superclass : #Object,
	#instVars : [
		'immediate',
		'procedureName',
		'usingClause',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTExecuteProcedure >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ immediate = anObject immediate
		and: [ procedureName = anObject procedureName
				and: [ usingClause = anObject usingClause
						and: [ startPosition = anObject startPosition
								and: [ stopPosition = anObject stopPosition ] ] ] ]
]

{ #category : #visiting }
PWBASTExecuteProcedure >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTExecuteProcedure: self
]

{ #category : #comparing }
PWBASTExecuteProcedure >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ immediate hash
		bitXor:
			(procedureName hash
				bitXor:
					(usingClause hash
						bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
PWBASTExecuteProcedure >> immediate [
	^ immediate
]

{ #category : #accessing }
PWBASTExecuteProcedure >> immediate: anObject [
	immediate := anObject
]

{ #category : #accessing }
PWBASTExecuteProcedure >> procedureName [
	^ procedureName
]

{ #category : #accessing }
PWBASTExecuteProcedure >> procedureName: anObject [
	procedureName := anObject
]

{ #category : #accessing }
PWBASTExecuteProcedure >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTExecuteProcedure >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTExecuteProcedure >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTExecuteProcedure >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTExecuteProcedure >> usingClause [
	^ usingClause
]

{ #category : #accessing }
PWBASTExecuteProcedure >> usingClause: anObject [
	usingClause := anObject
]
