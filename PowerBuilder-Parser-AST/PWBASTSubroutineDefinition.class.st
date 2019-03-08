Class {
	#name : #PWBASTSubroutineDefinition,
	#superclass : #Object,
	#instVars : [
		'subroutineSignature',
		'statements'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTSubroutineDefinition >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSubroutineDefinition: self
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> subroutineSignature [
	^ subroutineSignature
]

{ #category : #accessing }
PWBASTSubroutineDefinition >> subroutineSignature: anObject [
	subroutineSignature := anObject
]
