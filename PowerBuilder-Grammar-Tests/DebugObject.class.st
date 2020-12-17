Class {
	#name : #DebugObject,
	#superclass : #Object,
	#instVars : [
		'unparsedString',
		'progress',
		'failure',
		'file'
	],
	#category : #'PowerBuilder-Grammar-Tests'
}

{ #category : #accessing }
DebugObject >> failure [
	^ failure
]

{ #category : #accessing }
DebugObject >> failure: anObject [
	failure := anObject
]

{ #category : #accessing }
DebugObject >> file [
	^ file
]

{ #category : #accessing }
DebugObject >> file: anObject [
	file := anObject
]

{ #category : #accessing }
DebugObject >> printOn: s [
	super printOn: s.
	s space.
	s nextPutAll: (progress * 100 )  floor asString .
	s nextPut: $%.
	
]

{ #category : #accessing }
DebugObject >> progress [
	^ progress
]

{ #category : #accessing }
DebugObject >> progress: anObject [
	progress := anObject
]

{ #category : #accessing }
DebugObject >> unparsedString [
	^ unparsedString
]

{ #category : #accessing }
DebugObject >> unparsedString: anObject [
	unparsedString := anObject
]
