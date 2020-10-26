Class {
	#name : #MrlPWBASTTriggerDefinition,
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
MrlPWBASTTriggerDefinition >> = anObject [
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
MrlPWBASTTriggerDefinition >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTTriggerDefinition: self
]

{ #category : #accessing }
MrlPWBASTTriggerDefinition >> eventType [
	^ eventType
]

{ #category : #accessing }
MrlPWBASTTriggerDefinition >> eventType: anObject [
	eventType := anObject
]

{ #category : #comparing }
MrlPWBASTTriggerDefinition >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor:
			(eventType hash
				bitXor:
					(statements hash
						bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
MrlPWBASTTriggerDefinition >> identifier [
	^ identifier
]

{ #category : #accessing }
MrlPWBASTTriggerDefinition >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
MrlPWBASTTriggerDefinition >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTTriggerDefinition >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTTriggerDefinition >> statements [
	^ statements
]

{ #category : #accessing }
MrlPWBASTTriggerDefinition >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
MrlPWBASTTriggerDefinition >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTTriggerDefinition >> stopPosition: anObject [
	stopPosition := anObject
]
