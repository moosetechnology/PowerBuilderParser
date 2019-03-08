Class {
	#name : #PWBASTChooseCase,
	#superclass : #Object,
	#instVars : [
		'expression',
		'cases',
		'caseElse'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTChooseCase >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTChooseCase: self
]

{ #category : #accessing }
PWBASTChooseCase >> caseElse [
	^ caseElse
]

{ #category : #accessing }
PWBASTChooseCase >> caseElse: anObject [
	caseElse := anObject
]

{ #category : #accessing }
PWBASTChooseCase >> cases [
	^ cases
]

{ #category : #accessing }
PWBASTChooseCase >> cases: anObject [
	cases := anObject
]

{ #category : #accessing }
PWBASTChooseCase >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTChooseCase >> expression: anObject [
	expression := anObject
]
