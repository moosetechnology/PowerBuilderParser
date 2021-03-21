Class {
	#name : #LimitViolationDetectorTest,
	#superclass : #PWBAbtractViolationDetectVisitorTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #tests }
LimitViolationDetectorTest >> testFunctionMaximumParameterSize [
	| violation |
	self
		sourceExample:
			'public   function integer myfunc(str a1, str a2, str a3 ,str a4, str a5, str a6, str a7, str a8, str a9, str a10);
			return 1
	end function'.
	violation := (visitor visit: (parser parse: file contents))
		violations anyOne.
	violation file: file.
	violation reportOn: stream.
	self
		assert: self script
		equals:
			'<li>La routine >>myfunc à 10 de parametres. En effet le nombre de parametres doit être inferieur à 10  </li>'
]

{ #category : #tests }
LimitViolationDetectorTest >> testSubroutineMaximumParameterSize [
	| violation |
	self
		sourceExample:
			'public  subroutine myfunc(str a1, str a2, str a3 ,str a4, str a5, str a6, str a7, str a8, str a9, str a10);
			9
	end subroutine'.
	violation := (visitor
		visit: (parser subroutineDefinition parse: file contents))
		violations anyOne.
	violation file: file.
	violation reportOn: stream.
	self
		assert: self script
		equals:
			'<li>La routine >>myfunc à 10 de parametres. En effet le nombre de parametres doit être inferieur à 10  </li>'
]

{ #category : #tests }
LimitViolationDetectorTest >> testVisitViolationNumber [
	| ast |
	ast := parser number parse: '999999'.
	self assert: (visitor visit: ast) violations size equals: 1
]

{ #category : #tests }
LimitViolationDetectorTest >> testVisitViolationNumberInFunction [
	| ast violations |
	ast := parser functionDefinition
		parse:
			'public  function integer myfunc();
	999999
	end function'.
	violations := (visitor visit: ast) violations.
	self assert: violations size equals: 1.
	self assert: violations anyOne behaviorName equals: 'myfunc'.
	
]

{ #category : #tests }
LimitViolationDetectorTest >> testVisitViolationNumberInSubRoutine [
	| ast violations |
	self
		sourceExample:
			'public  subroutine  mysub();
		dw_1.find(''val3="''+ls_table+''"'',0,999999)
	end subroutine'.
	ast := parser subroutineDefinition parse: file contents.
	violations := (visitor visit: ast) violations.
	self assert: violations size equals: 1.
	self assert: violations anyOne behaviorName equals: 'mysub'
]

{ #category : #tests }
LimitViolationDetectorTest >> testVisitWrongViolationNumber [
	| ast |
	ast := parser number parse: '1000000000000000000000000000000'.
	self assert: (visitor visit: ast) violations isEmpty
]
