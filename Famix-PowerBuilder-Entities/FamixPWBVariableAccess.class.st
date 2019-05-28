Class {
	#name : #FamixPWBVariableAccess,
	#superclass : #FamixPWBAssociation,
	#traits : 'FamixTAccess + FamixTWithSourceAnchor',
	#classTraits : 'FamixTAccess classTrait + FamixTWithSourceAnchor classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBVariableAccess class >> annotation [

	<MSEClass: #VariableAccess super: #FamixPWBAssociation>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBVariableAccess class >> generatedSlotNames [
	<generated>
	'FamixPWBVariableAccess class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBVariableAccess class >> generatedTraitNames [
	<generated>
	^ #(FamixTAccess FamixTWithSourceAnchor)
]

{ #category : #meta }
FamixPWBVariableAccess class >> requirements [

	<generated>
	^ {  }
]
