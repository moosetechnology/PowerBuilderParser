Class {
	#name : #FamixPWBGraphicComponent,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTNamed',
	#classTraits : 'FamixTNamed classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBGraphicComponent class >> annotation [

	<MSEClass: #GraphicComponent super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBGraphicComponent class >> generatedSlotNames [
	<generated>
	'FamixPWBGraphicComponent class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBGraphicComponent class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed)
]

{ #category : #meta }
FamixPWBGraphicComponent class >> requirements [

	<generated>
	^ {  }
]
