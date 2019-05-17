Class {
	#name : #FamixPWBmajorObject,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTNamed + FamixTWithAccesses + FamixTWithAttributes + FamixTWithFunctions + FamixTWithMethods + FamixTWithMethodsWithAccessesGlue',
	#classTraits : 'FamixTNamed classTrait + FamixTWithAccesses classTrait + FamixTWithAttributes classTrait + FamixTWithFunctions classTrait + FamixTWithMethods classTrait + FamixTWithMethodsWithAccessesGlue classTrait',
	#instVars : [
		'#cyclomaticComplexity',
		'#library => FMOne type: #FamixPWBLibrary opposite: #userObjects'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBmajorObject class >> annotation [

	<MSEClass: #majorObject super: #FamixPWBSourcedEntity>
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
	^ #(FamixTNamed FamixTWithAccesses FamixTWithAttributes FamixTWithFunctions FamixTWithMethods FamixTWithMethodsWithAccessesGlue)
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
