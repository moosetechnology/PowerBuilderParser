Class {
	#name : #FamixPWBReference,
	#superclass : #FamixPWBAssociation,
	#traits : 'FamixTReference + FamixTWithSourceAnchor',
	#classTraits : 'FamixTReference classTrait + FamixTWithSourceAnchor classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBReference class >> annotation [

	<MSEClass: #Reference super: #FamixPWBAssociation>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBReference class >> generatedSlotNames [
	<generated>
	'FamixPWBReference class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBReference class >> generatedTraitNames [
	<generated>
	^ #(FamixTReference FamixTWithSourceAnchor)
]

{ #category : #meta }
FamixPWBReference class >> requirements [

	<generated>
	^ {  }
]
