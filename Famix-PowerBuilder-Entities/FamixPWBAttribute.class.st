Class {
	#name : #FamixPWBAttribute,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTNamed',
	#classTraits : 'FamixTNamed classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBAttribute class >> annotation [

	<MSEClass: #Attribute super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBAttribute class >> generatedSlotNames [
	<generated>
	'FamixPWBAttribute class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBAttribute class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed)
]

{ #category : #meta }
FamixPWBAttribute class >> requirements [

	<generated>
	^ {  }
]
