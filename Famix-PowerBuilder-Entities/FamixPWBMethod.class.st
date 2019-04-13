Class {
	#name : #FamixPWBMethod,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixTInvocable + FamixTMethod + FamixTNamed + FamixTWithParameters + FamixTWithSignature',
	#classTraits : 'FamixTInvocable classTrait + FamixTMethod classTrait + FamixTNamed classTrait + FamixTWithParameters classTrait + FamixTWithSignature classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBMethod class >> annotation [

	<MSEClass: #Method super: #FamixPWBBehavioral>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBMethod class >> generatedSlotNames [
	<generated>
	'FamixPWBMethod class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBMethod class >> generatedTraitNames [
	<generated>
	^ #(FamixTInvocable FamixTMethod FamixTNamed FamixTWithParameters FamixTWithSignature)
]

{ #category : #meta }
FamixPWBMethod class >> requirements [

	<generated>
	^ { FamixPWBmajorObject }
]

{ #category : #accessing }
FamixPWBMethod >> belongsTo [

	<generated>
	^ self parentType

]

{ #category : #accessing }
FamixPWBMethod >> belongsTo: anObject [

	<generated>
	self parentType: anObject

]
