Class {
	#name : #FamixPWBFunction,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTNamed',
	#classTraits : 'FamixTNamed classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBFunction class >> annotation [

	<MSEClass: #Function super: #FamixPWBSourcedEntity>
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
	^ #(FamixTNamed)
]

{ #category : #meta }
FamixPWBFunction class >> requirements [

	<generated>
	^ {  }
]
