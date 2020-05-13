Class {
	#name : #PWBQueryFileGrammar,
	#superclass : #PWBAbstractGrammar,
	#instVars : [
		'sqlQuery'
	],
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #parsing }
PWBQueryFileGrammar class >> supportedExtensions [
	^ #(srq)
]

{ #category : #accessing }
PWBQueryFileGrammar >> file [
	<rename: #sqlQuery into: #content>
	^ sqlQuery
]

{ #category : #accessing }
PWBQueryFileGrammar >> sqlQuery [
	^ (self
		parserCaseInsensitiveFor: #('select' 'update' 'delete' 'insert' 'fetch'))
		, spaces , (string / $; parser negate) plus
]
