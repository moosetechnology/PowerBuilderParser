Class {
	#name : #FamixPWBEvent,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTNamed',
	#classTraits : 'FamixTNamed classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBEvent class >> annotation [

	<MSEClass: #Event super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBEvent class >> generatedSlotNames [
	<generated>
	'FamixPWBEvent class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBEvent class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed)
]

{ #category : #meta }
FamixPWBEvent class >> requirements [

	<generated>
	^ {  }
]
