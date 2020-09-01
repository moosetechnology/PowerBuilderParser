Class {
	#name : #MrlPWBGrammar,
	#superclass : #PWBCommonGrammar,
	#instVars : [
		'fullInvocation',
		'oppositeFullInvocation',
		'mrlInvocationLine',
		'mrlMethodInvocation',
		'mrlSignatures'
	],
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #accessing }
MrlPWBGrammar >> file [
	<rename: #mrlInvocationLine into: #invocation>
	^ mrlInvocationLine
]

{ #category : #'as yet unclassified' }
MrlPWBGrammar >> fullInvocation [
<reify: #(mrlMethodInvocation / functionInvocation)into: #fullInvocation>
	^ mrlMethodInvocation / functionInvocation
]

{ #category : #accessing }
MrlPWBGrammar >> mrlInvocationLine [
<reify: #(fullInvocation / oppositeFullInvocation) into: #mrlInvocationLine>
	^ (fullInvocation / oppositeFullInvocation) plus
]

{ #category : #'as yet unclassified' }
MrlPWBGrammar >> mrlMethodInvocation [
	^ expressionTerm , expressionAction
]

{ #category : #'as yet unclassified' }
MrlPWBGrammar >> mrlSignatures [
	<reify: #(functionSignature / subroutineSignature) into: #mrlSignatures>
	^ functionSignature / subroutineSignature
]

{ #category : #accessing }
MrlPWBGrammar >> oppositeFullInvocation [
	^ fullInvocation negate plus
]
