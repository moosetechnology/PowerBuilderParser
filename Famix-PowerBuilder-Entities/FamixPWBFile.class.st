Class {
	#name : #FamixPWBFile,
	#superclass : #FamixPWBAbstractFile,
	#traits : 'FamixTFile',
	#classTraits : 'FamixTFile classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBFile class >> annotation [

	<MSEClass: #File super: #FamixPWBAbstractFile>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBFile class >> generatedSlotNames [
	<generated>
	'FamixPWBFile class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBFile class >> generatedTraitNames [
	<generated>
	^ #(FamixTFile)
]

{ #category : #meta }
FamixPWBFile class >> requirements [

	<generated>
	^ {  }
]
