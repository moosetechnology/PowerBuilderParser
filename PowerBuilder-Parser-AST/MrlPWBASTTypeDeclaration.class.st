Class {
	#name : #MrlPWBASTTypeDeclaration,
	#superclass : #Object,
	#instVars : [
		'type',
		'fromClause',
		'eventType',
		'withinClause',
		'descriptor',
		'attributes',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTTypeDeclaration >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ type = anObject type
		and: [ fromClause = anObject fromClause
				and: [ eventType = anObject eventType
						and: [ withinClause = anObject withinClause
								and: [ descriptor = anObject descriptor
										and: [ attributes = anObject attributes
												and: [ startPosition = anObject startPosition
														and: [ stopPosition = anObject stopPosition ] ] ] ] ] ] ]
]

{ #category : #visiting }
MrlPWBASTTypeDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTTypeDeclaration: self
]

{ #category : #accessing }
MrlPWBASTTypeDeclaration >> attributes [
	^ attributes
]

{ #category : #accessing }
MrlPWBASTTypeDeclaration >> attributes: anObject [
	attributes := anObject
]

{ #category : #accessing }
MrlPWBASTTypeDeclaration >> descriptor [
	^ descriptor
]

{ #category : #accessing }
MrlPWBASTTypeDeclaration >> descriptor: anObject [
	descriptor := anObject
]

{ #category : #accessing }
MrlPWBASTTypeDeclaration >> eventType [
	^ eventType
]

{ #category : #accessing }
MrlPWBASTTypeDeclaration >> eventType: anObject [
	eventType := anObject
]

{ #category : #accessing }
MrlPWBASTTypeDeclaration >> fromClause [
	^ fromClause
]

{ #category : #accessing }
MrlPWBASTTypeDeclaration >> fromClause: anObject [
	fromClause := anObject
]

{ #category : #comparing }
MrlPWBASTTypeDeclaration >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ type hash
		bitXor:
			(fromClause hash
				bitXor:
					(eventType hash
						bitXor:
							(withinClause hash
								bitXor:
									(descriptor hash
										bitXor:
											(attributes hash
												bitXor: (startPosition hash bitXor: stopPosition hash))))))
]

{ #category : #accessing }
MrlPWBASTTypeDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTTypeDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTTypeDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTTypeDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTTypeDeclaration >> type [
	^ type
]

{ #category : #accessing }
MrlPWBASTTypeDeclaration >> type: anObject [
	type := anObject
]

{ #category : #accessing }
MrlPWBASTTypeDeclaration >> withinClause [
	^ withinClause
]

{ #category : #accessing }
MrlPWBASTTypeDeclaration >> withinClause: anObject [
	withinClause := anObject
]
