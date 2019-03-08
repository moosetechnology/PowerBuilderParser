Class {
	#name : #FamixPWBComment,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTComment',
	#classTraits : 'FamixTComment classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBComment class >> annotation [

	<MSEClass: #Comment super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBComment class >> generatedSlotNames [
	<generated>
	'FamixPWBComment class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBComment class >> generatedTraitNames [
	<generated>
	^ #(FamixTComment)
]

{ #category : #meta }
FamixPWBComment class >> requirements [

	<generated>
	^ {  }
]
