Class {
	#name : #FamixPWBFunction,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixPWBPBTNamed - {#mooseNameOn:} + FamixTHasSignature + FamixTInvocable + FamixTMethod + FamixTWithParameters',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixTHasSignature classTrait + FamixTInvocable classTrait + FamixTMethod classTrait + FamixTWithParameters classTrait',
	#instVars : [
		'#returns => FMMany type: #FamixPWBFunctionReturn opposite: #parentType'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBFunction class >> annotation [

	<FMClass: #Function super: #FamixPWBBehavioral>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixPWBFunction >> addReturn: anObject [
	<generated>
	^ self returns add: anObject
]

{ #category : #accessing }
FamixPWBFunction >> returns [
	"Relation named: #returns type: #FamixPWBFunctionReturn opposite: #parentType"

	<generated>
	<derived>
	^ returns
]

{ #category : #accessing }
FamixPWBFunction >> returns: anObject [

	<generated>
	returns value: anObject
]

{ #category : #navigation }
FamixPWBFunction >> returnsGroup [
	<generated>
	<navigation: 'Returns'>
	^ MooseGroup withAll: self returns asSet
]
