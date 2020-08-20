Class {
	#name : #MrlPWBASTEventDeclaration,
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
MrlPWBASTEventDeclaration >> = anObject [
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
MrlPWBASTEventDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTEventDeclaration: self
]

{ #category : #accessing }
MrlPWBASTEventDeclaration >> customCallStatement [
	^ customCallStatement
]

{ #category : #accessing }
MrlPWBASTEventDeclaration >> customCallStatement: anObject [
	customCallStatement := anObject
]

{ #category : #accessing }
MrlPWBASTEventDeclaration >> eventReferenceName [
	^ eventReferenceName
]

{ #category : #accessing }
MrlPWBASTEventDeclaration >> eventReferenceName: anObject [
	eventReferenceName := anObject
]

{ #category : #comparing }
MrlPWBASTEventDeclaration >> hash [
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
MrlPWBASTEventDeclaration >> returnType [
	^ returnType
]

{ #category : #accessing }
MrlPWBASTEventDeclaration >> returnType: anObject [
	returnType := anObject
]

{ #category : #accessing }
MrlPWBASTEventDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTEventDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTEventDeclaration >> statements [
	^ statements
]

{ #category : #accessing }
MrlPWBASTEventDeclaration >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
MrlPWBASTEventDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTEventDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]
