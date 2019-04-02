Class {
	#name : #FamixPWBVariableAccess,
	#superclass : #FamixPWBAssociation,
	#traits : 'FamixTAccess',
	#classTraits : 'FamixTAccess classTrait',
	#instVars : [
		'#variables => FMMany type: #FamixPWBVariable opposite: #variableAccess'
	],
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
	^ #(variables)
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

{ #category : #accessing }
FamixPWBVariableAccess >> variables [

	<generated>
	^ variables
]

{ #category : #accessing }
FamixPWBVariableAccess >> variables: anObject [

	<generated>
	variables value: anObject

]

{ #category : #navigation }
FamixPWBVariableAccess >> variablesGroup [

	<generated>
	<navigation: 'Variables'>
	^ MooseGroup
			withAll: (self variables asSet)
]
