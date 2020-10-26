Class {
	#name : #PWBASTTypeDeclaration,
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
PWBASTTypeDeclaration >> = anObject [
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
PWBASTTypeDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTTypeDeclaration: self
]

{ #category : #accessing }
PWBASTTypeDeclaration >> attributes [
	^ attributes
]

{ #category : #accessing }
PWBASTTypeDeclaration >> attributes: anObject [
	attributes := anObject
]

{ #category : #accessing }
PWBASTTypeDeclaration >> descriptor [
	^ descriptor
]

{ #category : #accessing }
PWBASTTypeDeclaration >> descriptor: anObject [
	descriptor := anObject
]

{ #category : #accessing }
PWBASTTypeDeclaration >> eventType [
	^ eventType
]

{ #category : #accessing }
PWBASTTypeDeclaration >> eventType: anObject [
	eventType := anObject
]

{ #category : #accessing }
PWBASTTypeDeclaration >> fromClause [
	^ fromClause
]

{ #category : #accessing }
PWBASTTypeDeclaration >> fromClause: anObject [
	fromClause := anObject
]

{ #category : #comparing }
PWBASTTypeDeclaration >> hash [
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
PWBASTTypeDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTTypeDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTTypeDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTTypeDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTTypeDeclaration >> type [
	^ type
]

{ #category : #accessing }
PWBASTTypeDeclaration >> type: anObject [
	type := anObject
]

{ #category : #accessing }
PWBASTTypeDeclaration >> withinClause [
	^ withinClause
]

{ #category : #accessing }
PWBASTTypeDeclaration >> withinClause: anObject [
	withinClause := anObject
]
