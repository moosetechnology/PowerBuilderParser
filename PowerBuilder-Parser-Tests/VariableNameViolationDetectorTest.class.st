Class {
	#name : #VariableNameViolationDetectorTest,
	#superclass : #PWBAbtractViolationDetectVisitorTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #tests }
VariableNameViolationDetectorTest >> testArgumentNameViolationDetection [
	| ast violation |
	ast := parser subroutineDefinition
		parse:
			'public  subroutine  mysub(string myVar);
dffdfd
	end subroutine'.
	violation := (visitor visit: ast) violations anyOne.
	self assert: violation isNameViolation.
	violation reportOn: stream.
	self
		assert: self script
		equals:
			'<li>Le nom de l''argument myVarde >>mysub doit commencer par <code>a</code>  </li>'
]

{ #category : #tests }
VariableNameViolationDetectorTest >> testInstanceVariableNameViolationDetection [
	| ast violation |
	ast := parser typeVariable
		parse:
			'type variables
uo_di my_uo
end variables'.
	violation := (visitor visit: ast) violations anyOne.
	self assert: violation isNameViolation.
	violation reportOn: stream.
	self
		assert: self script
		equals:
			'<li>Le nom de la variable d''instance my_uo doit commencer par <code>i</code>  </li>'
]

{ #category : #tests }
VariableNameViolationDetectorTest >> testLocalVariableNameViolationDetection [
	| ast violation |
	ast := parser subroutineDefinition
		parse:
			'public  subroutine  mysub();
			string myvar
dffdfd
	end subroutine'.
	violation := (visitor visit: ast) violations anyOne.
	self assert: violation isNameViolation.
	violation reportOn: stream.
	self
		assert: self script
		equals:
			'<li>Le nom de la variable locale myvarde >>mysub doit commencer par <code>l</code>  </li>'
]
