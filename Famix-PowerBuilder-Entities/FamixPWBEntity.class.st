Class {
	#name : #FamixPWBEntity,
	#superclass : #MooseEntity,
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBEntity class >> annotation [

	<MSEClass: #Entity super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBEntity class >> generatedSlotNames [
	<generated>
	'FamixPWBEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBEntity class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FamixPWBEntity class >> metamodel [

	<generated>
	^ (self class environment at: #PWBFamixModelGenerator) metamodel
]

{ #category : #meta }
FamixPWBEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FamixPWBEntity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isType [

	<generated>
	^ false
]
