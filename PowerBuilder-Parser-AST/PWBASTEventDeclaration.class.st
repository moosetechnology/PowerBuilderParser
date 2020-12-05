Class {
	#name : #PWBASTEventDeclaration,
	#superclass : #Object,
	#instVars : [
		'returnType',
		'eventReferenceName',
		'customCallStatement',
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTEventDeclaration >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ returnType = anObject returnType
		and: [ eventReferenceName = anObject eventReferenceName
				and: [ customCallStatement = anObject customCallStatement
						and: [ statements = anObject statements
								and: [ startPosition = anObject startPosition
										and: [ stopPosition = anObject stopPosition ] ] ] ] ]
]

{ #category : #visiting }
PWBASTEventDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEventDeclaration: self
]

{ #category : #accessing }
PWBASTEventDeclaration >> customCallStatement [
	^ customCallStatement
]

{ #category : #accessing }
PWBASTEventDeclaration >> customCallStatement: anObject [
	customCallStatement := anObject
]

{ #category : #accessing }
PWBASTEventDeclaration >> eventReferenceName [
	^ eventReferenceName
]

{ #category : #accessing }
PWBASTEventDeclaration >> eventReferenceName: anObject [
	eventReferenceName := anObject
]

{ #category : #comparing }
PWBASTEventDeclaration >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ returnType hash
		bitXor:
			(eventReferenceName hash
				bitXor:
					(customCallStatement hash
						bitXor:
							(statements hash
								bitXor: (startPosition hash bitXor: stopPosition hash))))
]

{ #category : #accessing }
PWBASTEventDeclaration >> returnType [
	^ returnType
]

{ #category : #accessing }
PWBASTEventDeclaration >> returnType: anObject [
	returnType := anObject
]

{ #category : #accessing }
PWBASTEventDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTEventDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTEventDeclaration >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTEventDeclaration >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTEventDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTEventDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]
