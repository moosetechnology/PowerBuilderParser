Class {
	#name : #FamixPWBAttribute,
	#superclass : #MooseEntity,
	#traits : 'FamixTAccessible + FamixTAttribute + FamixTNamed + FamixTWithSourceAnchor + FamixTWithTypes',
	#classTraits : 'FamixTAccessible classTrait + FamixTAttribute classTrait + FamixTNamed classTrait + FamixTWithSourceAnchor classTrait + FamixTWithTypes classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBAttribute class >> annotation [

	<MSEClass: #Attribute super: #MooseEntity>
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
	^ #(FamixTAccessible FamixTAttribute FamixTNamed FamixTWithSourceAnchor FamixTWithTypes)
]

{ #category : #meta }
FamixPWBAttribute class >> metamodel [

	<generated>
	^ (self class environment at: #PWBFamixModelGenerator) metamodel
]

{ #category : #meta }
FamixPWBAttribute class >> requirements [

	<generated>
	^ { FamixPWBDataWindow. FamixPWBGraphicComponent. FamixPWBTrigger. FamixPWBmajorObject }
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

{ #category : #testing }
FamixPWBAttribute >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAttribute >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAttribute >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAttribute >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAttribute >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAttribute >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAttribute >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAttribute >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAttribute >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAttribute >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAttribute >> isType [

	<generated>
	^ false
]
