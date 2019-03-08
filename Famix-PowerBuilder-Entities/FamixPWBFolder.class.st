Class {
	#name : #FamixPWBFolder,
	#superclass : #FamixPWBAbstractFile,
	#traits : 'FamixTFolder',
	#classTraits : 'FamixTFolder classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBFolder class >> annotation [

	<MSEClass: #Folder super: #FamixPWBAbstractFile>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBFolder class >> generatedSlotNames [
	<generated>
	'FamixPWBFolder class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBFolder class >> generatedTraitNames [
	<generated>
	^ #(FamixTFolder)
]

{ #category : #meta }
FamixPWBFolder class >> requirements [

	<generated>
	^ {  }
]
