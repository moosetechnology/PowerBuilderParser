Class {
	#name : #PWBAbtractViolationDetectVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'parser',
		'visitor',
		'file'
	],
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBAbtractViolationDetectVisitorTest >> setUp [
	visitor := PWBAbstractViolationDetectVisitor new.
	visitor preprocessingMap: Dictionary new.
	parser := PWBCommonParser new.
	file := Mock named: 'file'.
	file stub fullName willReturn: ''.
	file stub asFileReference willReturn: file.
	visitor file: file
]

{ #category : #'as yet unclassified' }
PWBAbtractViolationDetectVisitorTest >> sourceExample: aString [
	file stub contents willReturn: aString
]
