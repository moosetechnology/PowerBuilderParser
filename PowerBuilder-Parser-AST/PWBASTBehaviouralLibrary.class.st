Class {
	#name : #PWBASTBehaviouralLibrary,
	#superclass : #Object,
	#instVars : [
		'libraryFile',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTBehaviouralLibrary >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ libraryFile = anObject libraryFile
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTBehaviouralLibrary >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTBehaviouralLibrary: self
]

{ #category : #comparing }
PWBASTBehaviouralLibrary >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ libraryFile hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTBehaviouralLibrary >> libraryFile [
	^ libraryFile
]

{ #category : #accessing }
PWBASTBehaviouralLibrary >> libraryFile: anObject [
	libraryFile := anObject
]

{ #category : #accessing }
PWBASTBehaviouralLibrary >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTBehaviouralLibrary >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTBehaviouralLibrary >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTBehaviouralLibrary >> stopPosition: anObject [
	stopPosition := anObject
]
