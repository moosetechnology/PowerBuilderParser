Class {
	#name : #FamixPWBVariable,
	#superclass : #MooseEntity,
	#traits : 'FamixTAccessible + FamixTNamed + FamixTWithSourceAnchor + FamixTWithTypes',
	#classTraits : 'FamixTAccessible classTrait + FamixTNamed classTrait + FamixTWithSourceAnchor classTrait + FamixTWithTypes classTrait',
	#instVars : [
		'#behavioral => FMOne type: #FamixPWBBehavioral opposite: #variables'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBVariable class >> annotation [

	<MSEClass: #Variable super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBVariable class >> generatedSlotNames [
	<generated>
	'FamixPWBVariable class>>#generatedSlotNames'.
	^ #(behavioral)
]

{ #category : #generator }
FamixPWBVariable class >> generatedTraitNames [
	<generated>
	^ #(FamixTAccessible FamixTNamed FamixTWithSourceAnchor FamixTWithTypes)
]

{ #category : #meta }
FamixPWBVariable class >> metamodel [

	<generated>
	^ (self class environment at: #PWBFamixModelGenerator) metamodel
]

{ #category : #meta }
FamixPWBVariable class >> requirements [

	<generated>
	^ { FamixPWBBehavioral }
]

{ #category : #helpers }
FamixPWBVariable >> accessAssociation [
	^ FamixPWBVariableAccess
]

{ #category : #accessing }
FamixPWBVariable >> behavioral [

	<generated>
	<container>

	^ behavioral
]

{ #category : #accessing }
FamixPWBVariable >> behavioral: anObject [

	<generated>
	behavioral := anObject

]

{ #category : #navigation }
FamixPWBVariable >> behavioralGroup [

	<generated>
	<navigation: 'Behavioral'>
	^ MooseGroup
			with: (self behavioral)
]

{ #category : #accessing }
FamixPWBVariable >> belongsTo [

	<generated>
	^ self behavioral

]

{ #category : #accessing }
FamixPWBVariable >> belongsTo: anObject [

	<generated>
	self behavioral: anObject

]

{ #category : #testing }
FamixPWBVariable >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariable >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariable >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariable >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariable >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariable >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariable >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariable >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariable >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariable >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariable >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariable >> isType [

	<generated>
	^ false
]
