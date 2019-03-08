Class {
	#name : #FamixPWBAbstractFile,
	#superclass : #FamixPWBNamedEntity,
	#traits : 'FamixTFileSystemEntity',
	#classTraits : 'FamixTFileSystemEntity classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBAbstractFile class >> annotation [

	<MSEClass: #AbstractFile super: #FamixPWBNamedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBAbstractFile class >> generatedSlotNames [
	<generated>
	'FamixPWBAbstractFile class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBAbstractFile class >> generatedTraitNames [
	<generated>
	^ #(FamixTFileSystemEntity)
]

{ #category : #meta }
FamixPWBAbstractFile class >> requirements [

	<generated>
	^ {  }
]
