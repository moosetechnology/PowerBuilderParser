Class {
	#name : #PWBAbtractViolationDetectVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'parser',
		'visitor',
		'file',
		'stream'
	],
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBAbtractViolationDetectVisitorTest >> script [
	^ stream contents
]

{ #category : #running }
PWBAbtractViolationDetectVisitorTest >> setUp [
	visitor := PWBAbstractViolationDetectVisitor new.
	visitor preprocessingMap: Dictionary new.
	parser := PWBCommonParser new.
	file := Mock named: 'file'.
	file stub fullName willReturn: ''.
	file stub asFileReference willReturn: file.
	visitor file: file.
	stream := WriteStream on: String new
]

{ #category : #'as yet unclassified' }
PWBAbtractViolationDetectVisitorTest >> sourceExample: aString [
	file stub contents willReturn: aString
]
