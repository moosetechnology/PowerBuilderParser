Class {
	#name : #FamixPWBDataWindow,
	#superclass : #FamixPWBmajorObject,
	#traits : 'FamixTNamed + FamixTWithAttributes',
	#classTraits : 'FamixTNamed classTrait + FamixTWithAttributes classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBDataWindow class >> annotation [

	<MSEClass: #DataWindow super: #FamixPWBmajorObject>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBDataWindow class >> generatedSlotNames [
	<generated>
	'FamixPWBDataWindow class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBDataWindow class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed FamixTWithAttributes)
]

{ #category : #meta }
FamixPWBDataWindow class >> requirements [

	<generated>
	^ {  }
]
