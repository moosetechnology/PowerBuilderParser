Class {
	#name : #FamixPWBAttribute,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTAccessible + FamixTAttribute + FamixTNamed + FamixTWithTypes',
	#classTraits : 'FamixTAccessible classTrait + FamixTAttribute classTrait + FamixTNamed classTrait + FamixTWithTypes classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBAttribute class >> annotation [

	<MSEClass: #Attribute super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBAttribute class >> generatedSlotNames [
	<generated>
	'FamixPWBAttribute class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBAttribute class >> generatedTraitNames [
	<generated>
	^ #(FamixTAccessible FamixTAttribute FamixTNamed FamixTWithTypes)
]

{ #category : #meta }
FamixPWBAttribute class >> requirements [

	<generated>
	^ { FamixPWBDataWindow. FamixPWBSubRoutine. FamixPWBTrigger. FamixPWBUserObject }
]

{ #category : #helpers }
FamixPWBAttribute >> accessAssociation [
	^ FamixPWBAccess
]

{ #category : #accessing }
FamixPWBAttribute >> belongsTo [

	<generated>
	^ self parentType

]

{ #category : #accessing }
FamixPWBAttribute >> belongsTo: anObject [

	<generated>
	self parentType: anObject

]
