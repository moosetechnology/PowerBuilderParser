Class {
	#name : #FamixPWBFunction,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixTFunction + FamixTNamed',
	#classTraits : 'FamixTFunction classTrait + FamixTNamed classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBFunction class >> annotation [

	<MSEClass: #Function super: #FamixPWBBehavioral>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBFunction class >> generatedSlotNames [
	<generated>
	'FamixPWBFunction class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBFunction class >> generatedTraitNames [
	<generated>
	^ #(FamixTFunction FamixTNamed)
]

{ #category : #meta }
FamixPWBFunction class >> requirements [

	<generated>
	^ { FamixPWBmajorObject }
]

{ #category : #accessing }
FamixPWBFunction >> belongsTo [

	<generated>
	^ self functionOwner

]

{ #category : #accessing }
FamixPWBFunction >> belongsTo: anObject [

	<generated>
	self functionOwner: anObject

]

{ #category : #accessors }
FamixPWBFunction >> reachableEntities [
	^ self variables
]
