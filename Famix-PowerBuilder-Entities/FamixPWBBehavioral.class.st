Class {
	#name : #FamixPWBBehavioral,
	#superclass : #MooseEntity,
	#traits : 'FamixTWithAccesses',
	#classTraits : 'FamixTWithAccesses classTrait',
	#instVars : [
		'#cyclomaticComplexity'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBBehavioral class >> annotation [

	<MSEClass: #Behavioral super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBBehavioral class >> generatedSlotNames [
	<generated>
	'FamixPWBBehavioral class>>#generatedSlotNames'.
	^ #(cyclomaticComplexity)
]

{ #category : #generator }
FamixPWBBehavioral class >> generatedTraitNames [
	<generated>
	^ #(FamixTWithAccesses)
]

{ #category : #meta }
FamixPWBBehavioral class >> metamodel [

	<generated>
	^ (self class environment at: #PWBFamixModelGenerator) metamodel
]

{ #category : #meta }
FamixPWBBehavioral class >> requirements [

	<generated>
	^ {  }
]

{ #category : #helpers }
FamixPWBBehavioral >> createAccessTo: aFamixPWBAccessible writing: aBoolean [ 
	^ aFamixPWBAccessible accessAssociation new
		from: self;
		to: aFamixPWBAccessible;
		isWrite: aBoolean;
		mooseModel: self mooseModel;
		yourself
]

{ #category : #accessing }
FamixPWBBehavioral >> cyclomaticComplexity [

	<MSEProperty: #cyclomaticComplexity type: #Number>
	<generated>
	^ cyclomaticComplexity
]

{ #category : #accessing }
FamixPWBBehavioral >> cyclomaticComplexity: anObject [

	<generated>
	cyclomaticComplexity := anObject

]

{ #category : #helpers }
FamixPWBBehavioral >> increaseCyclomaticComplexity [
	self cyclomaticComplexity: self cyclomaticComplexity + 1

	
]

{ #category : #testing }
FamixPWBBehavioral >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isType [

	<generated>
	^ false
]
