Class {
	#name : #PWBASTOption,
	#superclass : #Object,
	#instVars : [
		'access',
		'optionValue'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTOption >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTOption: self
]

{ #category : #accessing }
PWBASTOption >> access [
	^ access
]

{ #category : #accessing }
PWBASTOption >> access: anObject [
	access := anObject
]

{ #category : #accessing }
PWBASTOption >> optionValue [
	^ optionValue
]

{ #category : #accessing }
PWBASTOption >> optionValue: anObject [
	optionValue := anObject
]
