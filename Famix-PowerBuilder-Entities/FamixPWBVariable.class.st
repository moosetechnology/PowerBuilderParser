Class {
	#name : #FamixPWBVariable,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTNamed',
	#classTraits : 'FamixTNamed classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBVariable class >> annotation [

	<MSEClass: #Variable super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBVariable class >> generatedSlotNames [
	<generated>
	'FamixPWBVariable class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBVariable class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed)
]

{ #category : #meta }
FamixPWBVariable class >> requirements [

	<generated>
	^ {  }
]
