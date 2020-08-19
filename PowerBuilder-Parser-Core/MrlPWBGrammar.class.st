Class {
	#name : #MrlPWBGrammar,
	#superclass : #PWBAbstractGrammar,
	#instVars : [
		'fullInvocation',
		'oppositeFullInvocation',
		'mrlInvocationLine',
		'mrlMethodInvocation'
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
	^ (fullInvocation / oppositeFullInvocation) plus
]

{ #category : #'as yet unclassified' }
MrlPWBGrammar >> mrlMethodInvocation [
	^ expressionTerm , expressionAction
]

{ #category : #accessing }
MrlPWBGrammar >> oppositeFullInvocation [
	^ fullInvocation negate plus
]
