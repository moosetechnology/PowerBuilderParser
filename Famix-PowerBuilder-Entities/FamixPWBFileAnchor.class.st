Class {
	#name : #FamixPWBFileAnchor,
	#superclass : #FamixPWBAbstractFileAnchor,
	#traits : 'FamixTFileNavigation',
	#classTraits : 'FamixTFileNavigation classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBFileAnchor class >> annotation [

	<MSEClass: #FileAnchor super: #FamixPWBAbstractFileAnchor>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBFileAnchor class >> generatedSlotNames [
	<generated>
	'FamixPWBFileAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBFileAnchor class >> generatedTraitNames [
	<generated>
	^ #(FamixTFileNavigation)
]

{ #category : #meta }
FamixPWBFileAnchor class >> requirements [

	<generated>
	^ {  }
]
