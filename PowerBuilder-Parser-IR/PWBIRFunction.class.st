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
	"order is important here, the first in the list is meaningful"
	^{ FamixPWBFunction . FamixPWBGlobalFunction . FamixPWBRoutine . FamixPWBSubRoutine }
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

{ #category : #converting }
PWBIRFunction >> dependingFamixBehavioural: aFamixBehavioural [
	| invok |
	^invok := FamixPWBInvocation new
		candidates: {  self } ;
		sender: aFamixBehavioural ;
		mooseModel: self mooseModel ;
		yourself
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
PWBIRFunction >> toFamix: famixModel [
	famixEntity ifNotNil: [ ^famixEntity ].

	super toFamix: famixModel.
	
	declaredType ifNotNil: [ (declaredType toFamix: famixModel) addTypedEntity: famixEntity].

	^famixEntity
]

{ #category : #converting }
PWBIRFunction >> toFamix: famixModel asMemberOfUserObject: userObject [
	^(self toFamix: famixModel class: FamixPWBFunction) 
		parentType: userObject ;
		yourself
]
