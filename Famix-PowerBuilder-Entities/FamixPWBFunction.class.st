Class {
	#name : #FamixPWBFunction,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixPWBPBTNamed - {#mooseNameOn:} + FamixTHasSignature + FamixTInvocable + FamixTMethod + FamixTWithParameters',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixTHasSignature classTrait + FamixTInvocable classTrait + FamixTMethod classTrait + FamixTWithParameters classTrait',
	#instVars : [
		'#returnType => FMProperty'
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

{ #category : #accessing }
FamixPWBFunction >> returnType [

	<FMProperty: #returnType type: #Object>
	<generated>
	^ returnType
]

{ #category : #accessing }
FamixPWBFunction >> returnType: anObject [
	<generated>
	returnType := anObject
]
