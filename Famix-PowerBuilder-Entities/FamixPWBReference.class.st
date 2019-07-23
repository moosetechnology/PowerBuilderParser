Class {
	#name : #FamixPWBReference,
	#superclass : #MooseEntity,
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBReference class >> annotation [

	<MSEClass: #Reference super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBReference class >> generatedSlotNames [
	<generated>
	'FamixPWBReference class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBReference class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FamixPWBReference class >> metamodel [

	<generated>
	^ (self class environment at: #PWBFamixModelGenerator) metamodel
]

{ #category : #meta }
FamixPWBReference class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FamixPWBReference >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBReference >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBReference >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBReference >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBReference >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBReference >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBReference >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBReference >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBReference >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBReference >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBReference >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBReference >> isType [

	<generated>
	^ false
]
