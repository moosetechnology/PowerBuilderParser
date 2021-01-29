Class {
	#name : #ViolationRunner,
	#superclass : #PWBSimpleImporter,
	#instVars : [
		'stream'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #running }
ViolationRunner >> basicRun [
	super basicRun violations.
	^ visitor
]

{ #category : #running }
ViolationRunner >> exportToCSV: violations [
	"(folder asFileReference / 'violations.csv')
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
						cr ] ]"

	
]

{ #category : #initialization }
ViolationRunner >> initialize [
	super initialize.
	stream := WriteStream on: String new
]

{ #category : #initialization }
ViolationRunner >> setUp [ 
	super setUp.
	self visitor: PWBAbstractViolationDetectVisitor new
]
