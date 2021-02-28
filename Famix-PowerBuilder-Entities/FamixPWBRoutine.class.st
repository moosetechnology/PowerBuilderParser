Class {
	#name : #FamixPWBRoutine,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixTHasSignature + FamixTInvocable + FamixTWithImplicitVariables + FamixTWithLocalVariables + FamixTWithParameters',
	#classTraits : 'FamixTHasSignature classTrait + FamixTInvocable classTrait + FamixTWithImplicitVariables classTrait + FamixTWithLocalVariables classTrait + FamixTWithParameters classTrait',
	#instVars : [
		'#parameters => FMMany type: #FamixPWBParameter opposite: #parentBehaviouralEntity',
		'#parentType => FMOne type: #FamixPWBmajorObject opposite: #methods'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBRoutine class >> annotation [

	<FMClass: #Routine super: #FamixPWBBehavioral>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixPWBRoutine >> addParameter: anObject [
	<generated>
	^ self parameters add: anObject
]

{ #category : #accessing }
FamixPWBRoutine >> parameters [
	"Relation named: #parameters type: #FamixPWBParameter opposite: #parentBehaviouralEntity"

	<generated>
	<derived>
	^ parameters
]

{ #category : #accessing }
FamixPWBRoutine >> parameters: anObject [

	<generated>
	parameters value: anObject
]

{ #category : #accessing }
FamixPWBRoutine >> parentType [
	"Relation named: #parentType type: #FamixPWBmajorObject opposite: #methods"

	<generated>
	<container>
	^ parentType
]

{ #category : #accessing }
FamixPWBRoutine >> parentType: anObject [

	<generated>
	parentType := anObject
]

{ #category : #navigation }
FamixPWBRoutine >> parentTypeGroup [
	<generated>
	<navigation: 'ParentType'>
	^ MooseSpecializedGroup with: self parentType
]
