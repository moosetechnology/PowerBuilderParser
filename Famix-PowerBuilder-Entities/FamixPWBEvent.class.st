Class {
	#name : #FamixPWBEvent,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixTMethod + FamixTNamed',
	#classTraits : 'FamixTMethod classTrait + FamixTNamed classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBEvent class >> annotation [

	<MSEClass: #Event super: #FamixPWBBehavioral>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBEvent class >> generatedSlotNames [
	<generated>
	'FamixPWBEvent class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBEvent class >> generatedTraitNames [
	<generated>
	^ #(FamixTMethod FamixTNamed)
]

{ #category : #meta }
FamixPWBEvent class >> requirements [

	<generated>
	^ { FamixPWBmajorObject }
]

{ #category : #accessing }
FamixPWBEvent >> belongsTo [

	<generated>
	^ self parentType

]

{ #category : #accessing }
FamixPWBEvent >> belongsTo: anObject [

	<generated>
	self parentType: anObject

]
