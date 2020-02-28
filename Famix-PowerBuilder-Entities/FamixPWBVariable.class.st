Class {
	#name : #FamixPWBVariable,
	#superclass : #MooseEntity,
	#traits : 'FamixPWBTWithTags + FamixTAccessible + FamixTNamedEntity + FamixTWithSourceAnchor + FamixTWithTypes + FamixTNamed',
	#classTraits : 'FamixPWBTWithTags classTrait + FamixTAccessible classTrait + FamixTNamedEntity classTrait + FamixTWithSourceAnchor classTrait + FamixTWithTypes classTrait + FamixTNamed classTrait',
	#instVars : [
		'#behavioral => FMOne type: #FamixPWBBehavioral opposite: #variables'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBVariable class >> annotation [

	<FMClass: #Variable super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixPWBVariable class >> metamodel [

	<generated>
	^ FamixPWBModel metamodel
]

{ #category : #'as yet unclassified' }
FamixPWBVariable >> accessAssociation [
	^ FamixPWBVariableAccess
]

{ #category : #accessing }
FamixPWBVariable >> behavioral [
	"Relation named: #behavioral type: #FamixPWBBehavioral opposite: #variables"

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
	^ MooseGroup with: self behavioral
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
FamixPWBVariable >> isFunction [

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
FamixPWBVariable >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariable >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariable >> isType [

	<generated>
	^ false
]
