Class {
	#name : #ViolationRunner,
	#superclass : #PWBSimpleImporter,
	#instVars : [
		'stream'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #adding }
ViolationRunner >> addConstraint: aConstraint [
	visitor addConstraint: aConstraint
]

{ #category : #running }
ViolationRunner >> basicRun [
	super basicRun violations.
	^ visitor
]

{ #category : #initialization }
ViolationRunner >> initialize [
	super initialize.
	stream := WriteStream on: String new.
	
]

{ #category : #initialization }
ViolationRunner >> setUp [
	super setUp.
	self visitor: PWBAbstractViolationDetectVisitor new.
	self
		addConstraint: (LimitDetectRestriction new restrictionName: 'find')
]
