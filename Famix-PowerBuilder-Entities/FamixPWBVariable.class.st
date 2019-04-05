Class {
	#name : #FamixPWBVariable,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTAccessible + FamixTNamed + FamixTWithTypes',
	#classTraits : 'FamixTAccessible classTrait + FamixTNamed classTrait + FamixTWithTypes classTrait',
	#instVars : [
		'#function => FMOne type: #FamixPWBFunction opposite: #variables'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBVariable class >> annotation [

	<MSEClass: #Variable super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBVariable class >> generatedSlotNames [
	<generated>
	'FamixPWBVariable class>>#generatedSlotNames'.
	^ #(function)
]

{ #category : #generator }
FamixPWBVariable class >> generatedTraitNames [
	<generated>
	^ #(FamixTAccessible FamixTNamed FamixTWithTypes)
]

{ #category : #meta }
FamixPWBVariable class >> requirements [

	<generated>
	^ { FamixPWBFunction }
]

{ #category : #helpers }
FamixPWBVariable >> accessAssociation [
	^ FamixPWBVariableAccess
]

{ #category : #accessing }
FamixPWBVariable >> belongsTo [

	<generated>
	^ self function

]

{ #category : #accessing }
FamixPWBVariable >> belongsTo: anObject [

	<generated>
	self function: anObject

]

{ #category : #accessing }
FamixPWBVariable >> function [

	<generated>
	<container>

	^ function
]

{ #category : #accessing }
FamixPWBVariable >> function: anObject [

	<generated>
	function := anObject

]

{ #category : #navigation }
FamixPWBVariable >> functionGroup [

	<generated>
	<navigation: 'Function'>
	^ MooseGroup
			with: (self function)
]
