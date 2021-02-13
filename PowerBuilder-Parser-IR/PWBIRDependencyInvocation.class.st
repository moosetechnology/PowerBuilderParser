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
	self flag: #TODO. "It is possible that we could have only one irEntity instead of a collection of candidates. In that case, we could factor irEntity up in PWBIRDependencyEntity"
	^ candidates
]

{ #category : #accessing }
PWBIRDependencyInvocation >> candidates: anObject [
	candidates := anObject
]

{ #category : #converting }
PWBIRDependencyInvocation >> toFamixDependencyFromBehavioural: aFamixBehavioural [
	FamixPWBInvocation new
		sender: aFamixBehavioural ;
		candidates: candidates
]
