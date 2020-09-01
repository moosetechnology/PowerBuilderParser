Class {
	#name : #MrlPWBASTAccess,
	#superclass : #Object,
	#instVars : [
		'accessed',
		'arrayPosition',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTAccess >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ accessed = anObject accessed
		and: [ arrayPosition = anObject arrayPosition
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
MrlPWBASTAccess >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTAccess: self
]

{ #category : #accessing }
MrlPWBASTAccess >> accessed [
	^ accessed
]

{ #category : #accessing }
MrlPWBASTAccess >> accessed: anObject [
	accessed := anObject
]

{ #category : #accessing }
MrlPWBASTAccess >> arrayPosition [
	^ arrayPosition
]

{ #category : #accessing }
MrlPWBASTAccess >> arrayPosition: anObject [
	arrayPosition := anObject
]

{ #category : #comparing }
MrlPWBASTAccess >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ accessed hash
		bitXor:
			(arrayPosition hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTAccess >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTAccess >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTAccess >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTAccess >> stopPosition: anObject [
	stopPosition := anObject
]
