Class {
	#name : #FamixPWBMethod,
	#superclass : #MooseEntity,
	#traits : 'FamixTInvocable + FamixTMethod + FamixTNamed + FamixTWithAccesses + FamixTWithParameters + FamixTWithSignature',
	#classTraits : 'FamixTInvocable classTrait + FamixTMethod classTrait + FamixTNamed classTrait + FamixTWithAccesses classTrait + FamixTWithParameters classTrait + FamixTWithSignature classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBMethod class >> annotation [

	<MSEClass: #Method super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBMethod class >> generatedSlotNames [
	<generated>
	'FamixPWBMethod class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBMethod class >> generatedTraitNames [
	<generated>
	^ #(FamixTInvocable FamixTMethod FamixTNamed FamixTWithAccesses FamixTWithParameters FamixTWithSignature)
]

{ #category : #meta }
FamixPWBMethod class >> metamodel [

	<generated>
	^ (self class environment at: #PWBFamixModelGenerator) metamodel
]

{ #category : #meta }
FamixPWBMethod class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FamixPWBMethod >> belongsTo [

	<generated>
	^ self parentType

]

{ #category : #accessing }
FamixPWBMethod >> belongsTo: anObject [

	<generated>
	self parentType: anObject

]

{ #category : #testing }
FamixPWBMethod >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBMethod >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBMethod >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBMethod >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBMethod >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBMethod >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBMethod >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBMethod >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBMethod >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBMethod >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBMethod >> isType [

	<generated>
	^ false
]
