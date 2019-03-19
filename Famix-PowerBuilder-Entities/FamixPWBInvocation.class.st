Class {
	#name : #FamixPWBInvocation,
	#superclass : #FamixPWBAssociation,
	#traits : 'FamixTInvocation + FamixTWithSignature',
	#classTraits : 'FamixTInvocation classTrait + FamixTWithSignature classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBInvocation class >> annotation [

	<MSEClass: #Invocation super: #FamixPWBAssociation>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBInvocation class >> generatedSlotNames [
	<generated>
	'FamixPWBInvocation class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBInvocation class >> generatedTraitNames [
	<generated>
	^ #(FamixTInvocation FamixTWithSignature)
]

{ #category : #meta }
FamixPWBInvocation class >> requirements [

	<generated>
	^ {  }
]
