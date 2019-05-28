Class {
	#name : #FamixPWBmajorObject,
	#superclass : #MooseEntity,
	#traits : 'FamixTNamed + FamixTWithAccesses + FamixTWithAttributes + FamixTWithFunctions + FamixTWithMethods + FamixTWithMethodsWithAccessesGlue + FamixTWithSourceAnchor',
	#classTraits : 'FamixTNamed classTrait + FamixTWithAccesses classTrait + FamixTWithAttributes classTrait + FamixTWithFunctions classTrait + FamixTWithMethods classTrait + FamixTWithMethodsWithAccessesGlue classTrait + FamixTWithSourceAnchor classTrait',
	#instVars : [
		'#cyclomaticComplexity',
		'#library => FMOne type: #FamixPWBLibrary opposite: #userObjects'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBmajorObject class >> annotation [

	<MSEClass: #majorObject super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBmajorObject class >> generatedSlotNames [
	<generated>
	'FamixPWBmajorObject class>>#generatedSlotNames'.
	^ #(cyclomaticComplexity library)
]

{ #category : #generator }
FamixPWBmajorObject class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed FamixTWithAccesses FamixTWithAttributes FamixTWithFunctions FamixTWithMethods FamixTWithMethodsWithAccessesGlue FamixTWithSourceAnchor)
]

{ #category : #meta }
FamixPWBmajorObject class >> metamodel [

	<generated>
	^ (self class environment at: #PWBFamixModelGenerator) metamodel
]

{ #category : #meta }
FamixPWBmajorObject class >> requirements [

	<generated>
	^ { FamixPWBLibrary }
]

{ #category : #accessing }
FamixPWBmajorObject >> belongsTo [

	<generated>
	^ self library

]

{ #category : #accessing }
FamixPWBmajorObject >> belongsTo: anObject [

	<generated>
	self library: anObject

]

{ #category : #accessing }
FamixPWBmajorObject >> cyclomaticComplexity [

	<MSEProperty: #cyclomaticComplexity type: #Number>
	<generated>
	^ cyclomaticComplexity
]

{ #category : #accessing }
FamixPWBmajorObject >> cyclomaticComplexity: anObject [

	<generated>
	cyclomaticComplexity := anObject

]

{ #category : #testing }
FamixPWBmajorObject >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isType [

	<generated>
	^ false
]

{ #category : #accessing }
FamixPWBmajorObject >> library [

	<generated>
	<container>

	^ library
]

{ #category : #accessing }
FamixPWBmajorObject >> library: anObject [

	<generated>
	library := anObject

]

{ #category : #navigation }
FamixPWBmajorObject >> libraryGroup [

	<generated>
	<navigation: 'Library'>
	^ MooseGroup
			with: (self library)
]
