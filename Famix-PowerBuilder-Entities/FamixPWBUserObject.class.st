Class {
	#name : #FamixPWBUserObject,
	#superclass : #FamixPWBmajorObject,
	#traits : 'FamixPWBAbstractType',
	#classTraits : 'FamixPWBAbstractType classTrait',
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
	^ #(FamixPWBAbstractType)
]

{ #category : #meta }
FamixPWBUserObject class >> requirements [

	<generated>
	^ {  }
]
