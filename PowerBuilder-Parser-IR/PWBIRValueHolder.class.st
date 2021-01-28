"
An Intermediary Representation of a variable entity

Instance variables:
- declaredType, reference to a PWBIRType
"
Class {
	#name : #PWBIRValueHolder,
	#superclass : #PWBIRNamedEntity,
	#instVars : [
		'declaredType'
	],
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #mapping }
PWBIRValueHolder class >> defaultFamixClasses [
	^{ FamixPWBAttribute . FamixPWBInstanceVariable . FamixPWBGlobalVariable . FamixPWBLocalVariable . FamixPWBSharedVariable . FamixPWBParameter . FamixPWBVariable }
]

{ #category : #accessing }
PWBIRValueHolder >> addDependency: anIREntity [
	self shouldNotImplement 
]

{ #category : #adding }
PWBIRValueHolder >> addReferenceBy: referer inModel: irModel [
	^referer addAccessDependency: self inModel: irModel.
]

{ #category : #converting }
PWBIRValueHolder >> asSREntityScope [
	^declaredType
		ifNil: [ SRNullScope new ]
		ifNotNil: [ ^SREntityScope entity: declaredType ]
]

{ #category : #accessing }
PWBIRValueHolder >> declaredType [
	^ declaredType
]

{ #category : #accessing }
PWBIRValueHolder >> declaredType: anObject [
	declaredType := anObject
]

{ #category : #accessing }
PWBIRValueHolder >> name: aString [
	name := aString
]
