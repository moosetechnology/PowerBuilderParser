Class {
	#name : #FamixPWBVariable,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTAccessible + FamixTNamedEntity + FamixTSourceEntity + FamixTWithTypes',
	#classTraits : 'FamixTAccessible classTrait + FamixTNamedEntity classTrait + FamixTSourceEntity classTrait + FamixTWithTypes classTrait',
	#instVars : [
		'#behavioral => FMOne type: #FamixPWBBehavioral opposite: #variables'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBVariable class >> annotation [

	<FMClass: #Variable super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixPWBVariable class >> isDeprecated [
	"TNamed was renamed #TNamedEntity. You should update your generator."

	^ false
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
	^ MooseSpecializedGroup with: self behavioral
]

{ #category : #testing }
FamixPWBVariable >> isInstanceVariable [
	^ false
]
