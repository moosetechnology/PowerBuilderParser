Class {
	#name : #FamixPWBmajorObject,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTNamed + FamixTWithAccesses + FamixTWithAttributes',
	#classTraits : 'FamixTNamed classTrait + FamixTWithAccesses classTrait + FamixTWithAttributes classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBmajorObject class >> annotation [

	<MSEClass: #majorObject super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBmajorObject class >> generatedSlotNames [
	<generated>
	'FamixPWBmajorObject class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBmajorObject class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed FamixTWithAccesses FamixTWithAttributes)
]

{ #category : #meta }
FamixPWBmajorObject class >> requirements [

	<generated>
	^ {  }
]
