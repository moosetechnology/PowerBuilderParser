Class {
	#name : #FamixPWBSubRoutine,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixTInvocable + FamixTMethod + FamixTNamed',
	#classTraits : 'FamixTInvocable classTrait + FamixTMethod classTrait + FamixTNamed classTrait',
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
	^ #(FamixTInvocable FamixTMethod FamixTNamed)
]

{ #category : #meta }
FamixPWBSubRoutine class >> requirements [

	<generated>
	^ { FamixPWBmajorObject }
]

{ #category : #accessing }
FamixPWBSubRoutine >> belongsTo [

	<generated>
	^ self parentType

]

{ #category : #accessing }
FamixPWBSubRoutine >> belongsTo: anObject [

	<generated>
	self parentType: anObject

]
