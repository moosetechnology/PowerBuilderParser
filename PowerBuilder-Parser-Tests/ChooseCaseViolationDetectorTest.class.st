Class {
	#name : #ChooseCaseViolationDetectorTest,
	#superclass : #PWBAbtractViolationDetectVisitorTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #tests }
ChooseCaseViolationDetectorTest >> testChooseCaseWithOutCaseElse [
	| violation |
	self
		sourceExample:
			'public  function integer myfunc();
CHOOSE CASE Real(cnt)

CASE is < 10
		sle_message = " < 10"
END CHOOSE
	end function'.
	violation := (visitor visit: (parser parse: file contents))
		violations anyOne.
	violation file: file.
	violation reportOn: stream.
	self
		assert: self script
		equals:
			'<li> <code>ChooseCase </code> dans >>myfunc sans un <code>elseCase</code>. La violation commence a la  ligne 1 </li>'
]

{ #category : #tests }
ChooseCaseViolationDetectorTest >> testNumberOfCaseIsLowerToNormal [
	self
		sourceExample:
			'public  function integer myfunc();
CHOOSE CASE Real(cnt)

CASE is < 10
		sle_message = " < 10"
CASE ELSE
		sle_message = "Cannot evaluate!"  
END CHOOSE
	end function'.
	self
		assert: (visitor visit: (parser parse: file contents)) violations isEmpty
]

{ #category : #tests }
ChooseCaseViolationDetectorTest >> testNumberOfCaseIsUpperToNormal [
	| violation |
	self
		sourceExample:
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
	violation := (visitor visit: (parser parse: file contents))
		violations anyOne.
	violation file: file.
	violation reportOn: stream.
	self
		assert: self script
		equals:
			'<li> <code> ChooseCase</code> avec 12<code>case</code> dans >>myfunc . Le nombre de <code>case</code> doit etre normalement a 10. La violation commence a la  ligne 1 </li>'
]
