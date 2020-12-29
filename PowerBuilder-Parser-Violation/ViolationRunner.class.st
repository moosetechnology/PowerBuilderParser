Class {
	#name : #ViolationRunner,
	#superclass : #Object,
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #running }
ViolationRunner >> runOn: aFolder [
	| violationsFile violations |
	violations := (PWBSimpleImporter importFromFolder: aFolder)
		violations.
	violationsFile := aFolder asFileReference / 'violations.csv'.
	violationsFile
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
