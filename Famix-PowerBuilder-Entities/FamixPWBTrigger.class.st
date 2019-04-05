Class {
	#name : #FamixPWBTrigger,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixTNamed + FamixTWithAttributes',
	#classTraits : 'FamixTNamed classTrait + FamixTWithAttributes classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBTrigger class >> annotation [

	<MSEClass: #Trigger super: #FamixPWBBehavioral>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBTrigger class >> generatedSlotNames [
	<generated>
	'FamixPWBTrigger class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBTrigger class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed FamixTWithAttributes)
]

{ #category : #meta }
FamixPWBTrigger class >> requirements [

	<generated>
	^ {  }
]

{ #category : #resolving }
FamixPWBTrigger >> reachableEntities [
	^ self attributes
]
