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
