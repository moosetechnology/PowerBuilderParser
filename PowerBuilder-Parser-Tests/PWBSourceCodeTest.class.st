Class {
	#name : #PWBSourceCodeTest,
	#superclass : #PWBAbstractImporterVisitorsTest,
	#instVars : [
		'headerCode'
	],
	#category : #'PowerBuilder-Parser-Tests-Visitors'
}

{ #category : #running }
PWBSourceCodeTest >> fileExtension [ 
	^'sru'
]

{ #category : #running }
PWBSourceCodeTest >> importCodeWithForward: aString [
	^self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward
' , aString
]

{ #category : #running }
PWBSourceCodeTest >> sourceCodeOf: anEntity [
	^sourceExample
		copyFrom: anEntity startPos
		to: anEntity endPos
]

{ #category : #tests }
PWBSourceCodeTest >> testFunctionSourceCode [
	| fctCode fct |
	fctCode :=
'private function integer aFunction ();
  blah = 2
end function
'.
	self importCodeWithForward: fctCode.

	fct := (model getAllIR: PWBIRFunction) anyOne.

	self assert: fct isNotNil.
	self assert: (self sourceCodeOf: fct) equals: fctCode.

]
