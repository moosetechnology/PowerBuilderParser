Class {
	#name : #FamixPWBType,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTNamed',
	#classTraits : 'FamixTNamed classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBType class >> annotation [

	<MSEClass: #Type super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBType class >> generatedSlotNames [
	<generated>
	'FamixPWBType class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBType class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed)
]

{ #category : #meta }
FamixPWBType class >> requirements [

	<generated>
	^ {  }
]
