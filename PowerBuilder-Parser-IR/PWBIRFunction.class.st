Class {
	#name : #PWBIRFunction,
	#superclass : #PWBIRComplexEntity,
	#instVars : [
		'declaredType'
	],
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #mapping }
PWBIRFunction class >> defaultFamixClasses [
	^{ FamixPWBFunction . FamixPWBGlobalFunction . FamixPWBSubRoutine }
]

{ #category : #adding }
PWBIRFunction >> addReferenceBy: referer inModel: irModel [
	^referer addInvocationDependency: { self } inModel: irModel.
]

{ #category : #accessing }
PWBIRFunction >> declaredType [
	^ declaredType
]

{ #category : #accessing }
PWBIRFunction >> declaredType: anObject [
	declaredType := anObject
]

{ #category : #accessing }
PWBIRFunction >> increaseCyclomaticComplexity [
	self flag: #TODO
]

{ #category : #testing }
PWBIRFunction >> isBehavioural [
	^true
]

{ #category : #converting }
PWBIRFunction >> toFamixAsMemberOfUserObject: userObject [
	^(self toFamix: FamixPWBFunction) 
		parentType: userObject ;
		yourself
]
