Class {
	#name : #FamixPWBUserObject,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTNamed',
	#classTraits : 'FamixTNamed classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBUserObject class >> annotation [

	<MSEClass: #UserObject super: #FamixPWBSourcedEntity>
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
	^ #(FamixTNamed)
]

{ #category : #meta }
FamixPWBUserObject class >> requirements [

	<generated>
	^ {  }
]
