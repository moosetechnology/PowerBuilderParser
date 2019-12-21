Class {
	#name : #FamixPWBInvocation,
	#superclass : #FamixPWBAssociation,
	#traits : 'FamixTInvocation + FamixTWithSignature + FamixTWithSourceAnchor',
	#classTraits : 'FamixTInvocation classTrait + FamixTWithSignature classTrait + FamixTWithSourceAnchor classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBInvocation class >> annotation [

	<FMClass: #Invocation super: #FamixPWBAssociation>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]
