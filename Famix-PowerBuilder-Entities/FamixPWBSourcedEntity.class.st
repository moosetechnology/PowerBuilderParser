Class {
	#name : #FamixPWBSourcedEntity,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTWithComments + FamixTWithFiles + FamixTWithSourceAnchor + FamixTWithSourceLanguage',
	#classTraits : 'FamixTWithComments classTrait + FamixTWithFiles classTrait + FamixTWithSourceAnchor classTrait + FamixTWithSourceLanguage classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBSourcedEntity class >> annotation [

	<MSEClass: #SourcedEntity super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBSourcedEntity class >> generatedSlotNames [
	<generated>
	'FamixPWBSourcedEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBSourcedEntity class >> generatedTraitNames [
	<generated>
	^ #(FamixTWithComments FamixTWithFiles FamixTWithSourceAnchor FamixTWithSourceLanguage)
]

{ #category : #meta }
FamixPWBSourcedEntity class >> requirements [

	<generated>
	^ {  }
]
