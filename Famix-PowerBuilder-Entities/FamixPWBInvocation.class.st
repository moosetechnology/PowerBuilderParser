Class {
	#name : #FamixPWBInvocation,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTHasSignature + FamixTInvocation + FamixTSourceEntity',
	#classTraits : 'FamixTHasSignature classTrait + FamixTInvocation classTrait + FamixTSourceEntity classTrait',
	#instVars : [
		'#arguments => FMMany type: #FamixPWBArgument opposite: #invocation'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBInvocation class >> annotation [

	<FMClass: #Invocation super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixPWBInvocation >> addArgument: anObject [
	<generated>
	^ self arguments add: anObject
]

{ #category : #accessing }
FamixPWBInvocation >> arguments [
	"Relation named: #arguments type: #FamixPWBArgument opposite: #invocation"

	<generated>
	<derived>
	^ arguments
]

{ #category : #accessing }
FamixPWBInvocation >> arguments: anObject [

	<generated>
	arguments value: anObject
]

{ #category : #navigation }
FamixPWBInvocation >> argumentsGroup [
	<generated>
	<navigation: 'Arguments'>
	^ MooseSpecializedGroup withAll: self arguments asSet
]

{ #category : #printing }
FamixPWBInvocation >> printOn: aStream [
	^ aStream << self candidates anyOne name
]
