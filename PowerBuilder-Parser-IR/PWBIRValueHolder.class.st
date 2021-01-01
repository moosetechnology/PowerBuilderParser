Class {
	#name : #PWBIRValueHolder,
	#superclass : #PWBIRNamedEntity,
	#instVars : [
		'declaredType'
	],
	#category : #'PowerBuilder-Parser-IR'
}

{ #category : #mapping }
PWBIRValueHolder class >> mappingFamixClasses [
	^{ FamixPWBAttribute . FamixPWBInstanceVariable . FamixPWBGlobalVariable . FamixPWBLocalVariable . FamixPWBSharedVariable . FamixPWBParameter . FamixPWBVariable }
]

{ #category : #accessing }
PWBIRValueHolder >> addDependency: anIREntity [
	self shouldNotImplement 
]

{ #category : #accessing }
PWBIRValueHolder >> declaredType [
	^ declaredType
]

{ #category : #accessing }
PWBIRValueHolder >> declaredType: anObject [
	declaredType := anObject
]
