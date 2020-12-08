Class {
	#name : #PWBASTFile,
	#superclass : #Object,
	#instVars : [
		'content',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTFile >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ content = anObject content
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTFile >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFile: self
]

{ #category : #accessing }
PWBASTFile >> content [
	^ content
]

{ #category : #accessing }
PWBASTFile >> content: anObject [
	content := anObject
]

{ #category : #accessing }
PWBASTFile >> fileExtension [
	^ fileExtension
]

{ #category : #accessing }
PWBASTFile >> fileExtension: anObject [
	fileExtension := anObject
]

{ #category : #accessing }
PWBASTFile >> fileName [
	^ fileName
]

{ #category : #accessing }
PWBASTFile >> fileName: anObject [
	fileName := anObject
]

{ #category : #comparing }
PWBASTFile >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ content hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTFile >> invocation [
	^ invocation
]

{ #category : #accessing }
PWBASTFile >> invocation: anObject [
	invocation := anObject
]

{ #category : #accessing }
PWBASTFile >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTFile >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTFile >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTFile >> stopPosition: anObject [
	stopPosition := anObject
]
