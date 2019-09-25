Class {
	#name : #PWBASTTriggerDefinition,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'eventType',
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTTriggerDefinition >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ identifier = anObject identifier
		and: [ eventType = anObject eventType
				and: [ statements = anObject statements
						and: [ startPosition = anObject startPosition
								and: [ stopPosition = anObject stopPosition ] ] ] ]
]

{ #category : #visiting }
PWBASTTriggerDefinition >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTTriggerDefinition: self
]

{ #category : #accessing }
PWBASTTriggerDefinition >> eventType [
	^ eventType
]

{ #category : #accessing }
PWBASTTriggerDefinition >> eventType: anObject [
	eventType := anObject
]

{ #category : #comparing }
PWBASTTriggerDefinition >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor:
			(eventType hash
				bitXor:
					(statements hash
						bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
PWBASTTriggerDefinition >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTTriggerDefinition >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTTriggerDefinition >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTTriggerDefinition >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTTriggerDefinition >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTTriggerDefinition >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTTriggerDefinition >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTTriggerDefinition >> stopPosition: anObject [
	stopPosition := anObject
]
