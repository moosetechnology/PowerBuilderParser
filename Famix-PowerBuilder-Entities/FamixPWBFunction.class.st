Class {
	#name : #FamixPWBFunction,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixPWBPBTNamed - {#mooseNameOn:} + FamixPWBTHasSignature + FamixTInvocable + FamixTMethod + FamixTWithParameters',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixPWBTHasSignature classTrait + FamixTInvocable classTrait + FamixTMethod classTrait + FamixTWithParameters classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBFunction class >> annotation [

	<FMClass: #Function super: #FamixPWBBehavioral>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #'accessing ' }
FamixPWBFunction >> content: aCollection [
	content := aCollection
]
