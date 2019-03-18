Class {
	#name : #PWBASTChooseCase,
	#superclass : #Object,
	#instVars : [
		'expression',
		'cases',
		'caseElse',
		'startPosition',
		'stopPosition'
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

{ #category : #accessing }
PWBASTChooseCase >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTChooseCase >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTChooseCase >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTChooseCase >> stopPosition: anObject [
	stopPosition := anObject
]
