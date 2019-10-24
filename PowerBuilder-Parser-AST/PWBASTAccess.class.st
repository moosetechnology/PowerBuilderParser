Class {
	#name : #PWBASTAccess,
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
PWBASTAccess >> = anObject [
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
PWBASTAccess >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAccess: self
]

{ #category : #accessing }
PWBASTAccess >> accessed [
	^ accessed
]

{ #category : #accessing }
PWBASTAccess >> accessed: anObject [
	accessed := anObject
]

{ #category : #accessing }
PWBASTAccess >> arrayPosition [
	^ arrayPosition
]

{ #category : #accessing }
PWBASTAccess >> arrayPosition: anObject [
	arrayPosition := anObject
]

{ #category : #comparing }
PWBASTAccess >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ accessed hash
		bitXor:
			(arrayPosition hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTAccess >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTAccess >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTAccess >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTAccess >> stopPosition: anObject [
	stopPosition := anObject
]
