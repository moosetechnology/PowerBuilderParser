Class {
	#name : #FamixPWBFunction,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixTInvocable + FamixTMethod + FamixTNamed + FamixTWithParameters + FamixTWithSignature',
	#classTraits : 'FamixTInvocable classTrait + FamixTMethod classTrait + FamixTNamed classTrait + FamixTWithParameters classTrait + FamixTWithSignature classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBFunction class >> annotation [

	<MSEClass: #Function super: #FamixPWBBehavioral>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBFunction class >> generatedSlotNames [
	<generated>
	'FamixPWBFunction class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBFunction class >> generatedTraitNames [
	<generated>
	^ #(FamixTInvocable FamixTMethod FamixTNamed FamixTWithParameters FamixTWithSignature)
]

{ #category : #meta }
FamixPWBFunction class >> requirements [

	<generated>
	^ { FamixPWBmajorObject }
]

{ #category : #accessing }
FamixPWBFunction >> belongsTo [

	<generated>
	^ self parentType

]

{ #category : #accessing }
FamixPWBFunction >> belongsTo: anObject [

	<generated>
	self parentType: anObject

]
