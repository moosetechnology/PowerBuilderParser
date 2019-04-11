Class {
	#name : #FamixPWBTrigger,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixTMethod + FamixTNamed + FamixTWithAttributes',
	#classTraits : 'FamixTMethod classTrait + FamixTNamed classTrait + FamixTWithAttributes classTrait',
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
	^ #(FamixTMethod FamixTNamed FamixTWithAttributes)
]

{ #category : #meta }
FamixPWBTrigger class >> requirements [

	<generated>
	^ { FamixPWBmajorObject }
]

{ #category : #accessing }
FamixPWBTrigger >> belongsTo [

	<generated>
	^ self parentType

]

{ #category : #accessing }
FamixPWBTrigger >> belongsTo: anObject [

	<generated>
	self parentType: anObject

]

{ #category : #resolving }
FamixPWBTrigger >> reachableEntities [
	^ self attributes
]
