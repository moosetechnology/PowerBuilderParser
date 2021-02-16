Class {
	#name : #ChooseCaseViolationDetectorTest,
	#superclass : #PWBAbtractViolationDetectVisitorTest,
	#instVars : [
		'stream'
	],
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #tests }
ChooseCaseViolationDetectorTest >> testLimitOfChooseCase [
]

{ #category : #tests }
ChooseCaseViolationDetectorTest >> testVisitViolationCaseNumberFunction [
	| ast violations |
	ast := parser functionDefinition
		parse:
			'public  function integer myfunc();
CHOOSE CASE Real(cnt)

CASE is < 10
		sle_message = " < 10"
CASE 11 to 20
		sle_message = " 11 to 20"
CASE 21 to 30
		sle_message = " 21 to 30"
CASE 31 to 40
		sle_message = " 31 to 40"
CASE 41 to 50
		sle_message = " 41 to 50"
CASE 51 to 60
		sle_message = " 51 to 60"
CASE 61 to 70
		sle_message = " 61 to 70"
CASE 71 to 80
		sle_message = " 71 to 80"
CASE 81 to 90
		sle_message = " 81 to 90"
CASE 91 to 100
		sle_message = " 91 to 100"
CASE is > 200
		sle_message = " > 200"  
CASE ELSE
		sle_message = "Cannot evaluate!"  
END CHOOSE
	end function'.
	violations := (visitor visit: ast) violations.
	self assert: violations size equals: 1.
	self assert: violations anyOne behaviorName equals: 'myfunc'.
	
]
