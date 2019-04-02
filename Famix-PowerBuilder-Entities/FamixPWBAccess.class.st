Class {
	#name : #FamixPWBAccess,
	#superclass : #FamixPWBAssociation,
	#traits : 'FamixTAccess',
	#classTraits : 'FamixTAccess classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBAccess class >> annotation [

	<MSEClass: #Access super: #FamixPWBAssociation>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBAccess class >> generatedSlotNames [
	<generated>
	'FamixPWBAccess class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBAccess class >> generatedTraitNames [
	<generated>
	^ #(FamixTAccess)
]

{ #category : #meta }
FamixPWBAccess class >> requirements [

	<generated>
	^ {  }
]
