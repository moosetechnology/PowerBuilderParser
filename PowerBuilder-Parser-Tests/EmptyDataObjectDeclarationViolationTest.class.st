Class {
	#name : #EmptyDataObjectDeclarationViolationTest,
	#superclass : #PWBAbtractViolationDetectVisitorTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #tests }
EmptyDataObjectDeclarationViolationTest >> testEmptyDataObjectDeclaration [
	| violation |
	self
		sourceExample:
			'type dw_his_trt from uo_traitement
string dataobject  = ""
	end type'.
	violation := (visitor visit: (parser parse: file contents))
		violations anyOne.
	violation file: file.
	violation reportOn: stream.
	self
		assert: self script
		equals:
			'<li> <code>string dataobject = "" </code> dans '
]
