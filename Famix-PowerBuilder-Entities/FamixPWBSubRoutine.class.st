Class {
	#name : #FamixPWBSubRoutine,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixTNamed + FamixTWithAttributes',
	#classTraits : 'FamixTNamed classTrait + FamixTWithAttributes classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBSubRoutine class >> annotation [

	<MSEClass: #SubRoutine super: #FamixPWBBehavioral>
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
	^ #(FamixTNamed FamixTWithAttributes)
]

{ #category : #meta }
FamixPWBSubRoutine class >> requirements [

	<generated>
	^ {  }
]

{ #category : #helpers }
FamixPWBSubRoutine >> reachableEntities [
	^ self attributes
]
