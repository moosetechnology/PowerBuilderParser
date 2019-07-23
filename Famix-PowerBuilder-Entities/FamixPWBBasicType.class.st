Class {
	#name : #FamixPWBBasicType,
	#superclass : #MooseEntity,
	#traits : 'FamixPWBAbstractType',
	#classTraits : 'FamixPWBAbstractType classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBBasicType class >> annotation [

	<MSEClass: #BasicType super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBBasicType class >> generatedSlotNames [
	<generated>
	'FamixPWBBasicType class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBBasicType class >> generatedTraitNames [
	<generated>
	^ #(FamixPWBAbstractType)
]

{ #category : #meta }
FamixPWBBasicType class >> metamodel [

	<generated>
	^ (self class environment at: #PWBFamixModelGenerator) metamodel
]

{ #category : #meta }
FamixPWBBasicType class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FamixPWBBasicType >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isType [

	<generated>
	^ false
]
