Class {
	#name : #FamixPWBAbstractType,
	#superclass : #FamixPWBNamedEntity,
	#traits : 'FamixTReferenceable + FamixTType + FamixTWithSubInheritances + FamixTWithSuperInheritances',
	#classTraits : 'FamixTReferenceable classTrait + FamixTType classTrait + FamixTWithSubInheritances classTrait + FamixTWithSuperInheritances classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBAbstractType class >> annotation [

	<MSEClass: #AbstractType super: #FamixPWBNamedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBAbstractType class >> generatedSlotNames [
	<generated>
	'FamixPWBAbstractType class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBAbstractType class >> generatedTraitNames [
	<generated>
	^ #(FamixTReferenceable FamixTType FamixTWithSubInheritances FamixTWithSuperInheritances)
]

{ #category : #meta }
FamixPWBAbstractType class >> requirements [

	<generated>
	^ { FamixPWBAttribute. FamixPWBVariable }
]

{ #category : #accessing }
FamixPWBAbstractType >> belongsTo [

	<generated>
	^ self typeContainer

]

{ #category : #accessing }
FamixPWBAbstractType >> belongsTo: anObject [

	<generated>
	self typeContainer: anObject

]
