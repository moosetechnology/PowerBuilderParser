Class {
	#name : #FamixPWBmajorObject,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTNamed + FamixTWithAccesses + FamixTWithAttributes',
	#classTraits : 'FamixTNamed classTrait + FamixTWithAccesses classTrait + FamixTWithAttributes classTrait',
	#instVars : [
		'#cyclomaticComplexity'
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
	^ #(cyclomaticComplexity)
]

{ #category : #generator }
FamixPWBmajorObject class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed FamixTWithAccesses FamixTWithAttributes)
]

{ #category : #meta }
FamixPWBmajorObject class >> requirements [

	<generated>
	^ {  }
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
