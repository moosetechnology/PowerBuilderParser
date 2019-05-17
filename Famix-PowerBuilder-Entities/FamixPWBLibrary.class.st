Class {
	#name : #FamixPWBLibrary,
	#superclass : #MooseEntity,
	#traits : 'FamixTNamed',
	#classTraits : 'FamixTNamed classTrait',
	#instVars : [
		'#userObjects => FMMany type: #FamixPWBmajorObject opposite: #library'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBLibrary class >> annotation [

	<MSEClass: #Library super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBLibrary class >> generatedSlotNames [
	<generated>
	'FamixPWBLibrary class>>#generatedSlotNames'.
	^ #(userObjects)
]

{ #category : #generator }
FamixPWBLibrary class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed)
]

{ #category : #meta }
FamixPWBLibrary class >> metamodel [

	<generated>
	^ (self class environment at: #PWBFamixModelGenerator) metamodel
]

{ #category : #meta }
FamixPWBLibrary class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FamixPWBLibrary >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isType [

	<generated>
	^ false
]

{ #category : #accessing }
FamixPWBLibrary >> userObjects [

	<generated>
	^ userObjects
]

{ #category : #accessing }
FamixPWBLibrary >> userObjects: anObject [

	<generated>
	userObjects value: anObject

]

{ #category : #navigation }
FamixPWBLibrary >> userObjectsGroup [

	<generated>
	<navigation: 'UserObjects'>
	^ MooseGroup
			withAll: (self userObjects asSet)
]
