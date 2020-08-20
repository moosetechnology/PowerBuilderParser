Class {
	#name : #MrlPWBASTExecuteProcedure,
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
MrlPWBASTExecuteProcedure >> = anObject [
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
MrlPWBASTExecuteProcedure >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTExecuteProcedure: self
]

{ #category : #comparing }
MrlPWBASTExecuteProcedure >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ immediate hash
		bitXor:
			(procedureName hash
				bitXor:
					(usingClause hash
						bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
MrlPWBASTExecuteProcedure >> immediate [
	^ immediate
]

{ #category : #accessing }
MrlPWBASTExecuteProcedure >> immediate: anObject [
	immediate := anObject
]

{ #category : #accessing }
MrlPWBASTExecuteProcedure >> procedureName [
	^ procedureName
]

{ #category : #accessing }
MrlPWBASTExecuteProcedure >> procedureName: anObject [
	procedureName := anObject
]

{ #category : #accessing }
MrlPWBASTExecuteProcedure >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTExecuteProcedure >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTExecuteProcedure >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTExecuteProcedure >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTExecuteProcedure >> usingClause [
	^ usingClause
]

{ #category : #accessing }
MrlPWBASTExecuteProcedure >> usingClause: anObject [
	usingClause := anObject
]
