Class {
	#name : #FamixPWBVariableAccess,
	#superclass : #FamixPWBAssociation,
	#traits : 'FamixTAccess',
	#classTraits : 'FamixTAccess classTrait',
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
	^ #(FamixTAccess)
]

{ #category : #meta }
FamixPWBVariableAccess class >> requirements [

	<generated>
	^ {  }
]
