Class {
	#name : #FamixPWBRoutine,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixTFunction + FamixTNamed',
	#classTraits : 'FamixTFunction classTrait + FamixTNamed classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBRoutine class >> annotation [

	<MSEClass: #Routine super: #FamixPWBBehavioral>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBRoutine class >> generatedSlotNames [
	<generated>
	'FamixPWBRoutine class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBRoutine class >> generatedTraitNames [
	<generated>
	^ #(FamixTFunction FamixTNamed)
]

{ #category : #meta }
FamixPWBRoutine class >> requirements [

	<generated>
	^ { FamixPWBmajorObject }
]

{ #category : #accessing }
FamixPWBRoutine >> belongsTo [

	<generated>
	^ self functionOwner

]

{ #category : #accessing }
FamixPWBRoutine >> belongsTo: anObject [

	<generated>
	self functionOwner: anObject

]
