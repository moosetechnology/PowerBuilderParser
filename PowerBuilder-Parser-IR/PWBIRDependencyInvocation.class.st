"
An Intermediary Representation of an invocation dependency

Instance variable:
- candidates, all function that are candidates for the invocation
"
Class {
	#name : #PWBIRDependencyInvocation,
	#superclass : #PWBIRDependencyEntity,
	#instVars : [
		'candidates'
	],
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #accessing }
PWBIRDependencyInvocation >> candidates [
	^ candidates
]

{ #category : #accessing }
PWBIRDependencyInvocation >> candidates: anObject [
	candidates := anObject
]
