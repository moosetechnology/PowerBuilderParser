Class {
	#name : #MrlPWBASTBehaviouralLibrary,
	#superclass : #Object,
	#instVars : [
		'libraryFile',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTBehaviouralLibrary >> = anObject [
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
MrlPWBASTBehaviouralLibrary >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTBehaviouralLibrary: self
]

{ #category : #comparing }
MrlPWBASTBehaviouralLibrary >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ libraryFile hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTBehaviouralLibrary >> libraryFile [
	^ libraryFile
]

{ #category : #accessing }
MrlPWBASTBehaviouralLibrary >> libraryFile: anObject [
	libraryFile := anObject
]

{ #category : #accessing }
MrlPWBASTBehaviouralLibrary >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTBehaviouralLibrary >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTBehaviouralLibrary >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTBehaviouralLibrary >> stopPosition: anObject [
	stopPosition := anObject
]
