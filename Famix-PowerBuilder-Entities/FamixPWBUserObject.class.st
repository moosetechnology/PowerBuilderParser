Class {
	#name : #FamixPWBUserObject,
	#superclass : #FamixPWBmajorObject,
	#traits : 'FamixTWithSubInheritances + FamixTWithSuperInheritances',
	#classTraits : 'FamixTWithSubInheritances classTrait + FamixTWithSuperInheritances classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBUserObject class >> annotation [

	<MSEClass: #UserObject super: #FamixPWBmajorObject>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBUserObject class >> generatedSlotNames [
	<generated>
	'FamixPWBUserObject class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBUserObject class >> generatedTraitNames [
	<generated>
	^ #(FamixTWithSubInheritances FamixTWithSuperInheritances)
]

{ #category : #meta }
FamixPWBUserObject class >> requirements [

	<generated>
	^ {  }
]
