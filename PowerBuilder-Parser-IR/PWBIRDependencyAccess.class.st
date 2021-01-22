"
An Intermediary Representation of an access dependency

Instance variable:
- irEntity, the PWBIRValueHolder entity that is accessed
- isWrite, hether the access is read (getting value) or write (assigning value)
"
Class {
	#name : #PWBIRDependencyAccess,
	#superclass : #PWBIRDependencyEntity,
	#instVars : [
		'irEntity',
		'isWrite'
	],
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #accessing }
PWBIRDependencyAccess >> irEntity [
	^ irEntity
]

{ #category : #accessing }
PWBIRDependencyAccess >> irEntity: anObject [
	irEntity := anObject
]

{ #category : #accessing }
PWBIRDependencyAccess >> isWrite [
	^ isWrite
]

{ #category : #accessing }
PWBIRDependencyAccess >> isWrite: anObject [
	isWrite := anObject
]
