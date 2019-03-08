Class {
	#name : #PWBASTExport,
	#superclass : #Object,
	#instVars : [
		'formatType',
		'parameters'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTExport >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTExport: self
]

{ #category : #accessing }
PWBASTExport >> formatType [
	^ formatType
]

{ #category : #accessing }
PWBASTExport >> formatType: anObject [
	formatType := anObject
]

{ #category : #accessing }
PWBASTExport >> parameters [
	^ parameters
]

{ #category : #accessing }
PWBASTExport >> parameters: anObject [
	parameters := anObject
]
