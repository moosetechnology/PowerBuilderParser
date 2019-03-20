Class {
	#name : #FamixPWBTrigger,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTNamed',
	#classTraits : 'FamixTNamed classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBTrigger class >> annotation [

	<MSEClass: #Trigger super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBTrigger class >> generatedSlotNames [
	<generated>
	'FamixPWBTrigger class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBTrigger class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed)
]

{ #category : #meta }
FamixPWBTrigger class >> requirements [

	<generated>
	^ {  }
]
