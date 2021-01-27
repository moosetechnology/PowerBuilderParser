Class {
	#name : #ViolationRunner,
	#superclass : #PWBSimpleImporter,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #running }
ViolationRunner >> basicRun [
	| violations |
	violations := super basicRun violations.
	self exportToCSV: violations.
	^visitor
]

{ #category : #running }
ViolationRunner >> exportToCSV: violations [
	(folder asFileReference / 'violations.csv')
		writeStreamDo: [ :stream | 
			stream
				<< 'objet,behavior,line,value';
				cr.
			violations
				do: [ :violation | 
					stream
						<< violation objectName;
						nextPut: $,;
						<< violation behaviorName;
						nextPut: $,;
						<< violation relativeLine asString;
						nextPut: $,;
						<< violation value;
						cr ] ]
]

{ #category : #initialization }
ViolationRunner >> setUp [ 
	super setUp.
	self visitor: PWBViolationDetectVisitor new
]
