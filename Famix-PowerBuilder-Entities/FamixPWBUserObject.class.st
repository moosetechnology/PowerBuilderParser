Class {
	#name : #FamixPWBUserObject,
	#superclass : #FamixPWBmajorObject,
	#traits : 'FamixPWBAbstractType + FamixTWithInvocations',
	#classTraits : 'FamixPWBAbstractType classTrait + FamixTWithInvocations classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBUserObject class >> annotation [

	<MSEClass: #UserObject super: #FamixPWBmajorObject>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBUserObject class >> generatedSlotNames [
	<generated>
	'FamixPWBUserObject class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBUserObject class >> generatedTraitNames [
	<generated>
	^ #(FamixPWBAbstractType FamixTWithInvocations)
]

{ #category : #meta }
FamixPWBUserObject class >> requirements [

	<generated>
	^ {  }
]
