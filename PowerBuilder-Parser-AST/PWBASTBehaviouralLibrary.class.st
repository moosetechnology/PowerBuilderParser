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

{ #category : #visiting }
PWBASTBehaviouralLibrary >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTBehaviouralLibrary: self
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
