Class {
	#name : #FamixPWBSubRoutine,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTNamed',
	#classTraits : 'FamixTNamed classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBSubRoutine class >> annotation [

	<MSEClass: #SubRoutine super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBSubRoutine class >> generatedSlotNames [
	<generated>
	'FamixPWBSubRoutine class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBSubRoutine class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed)
]

{ #category : #meta }
FamixPWBSubRoutine class >> requirements [

	<generated>
	^ {  }
]
