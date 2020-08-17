Class {
	#name : #FamixPWBParameter,
	#superclass : #FamixPWBVariable,
	#traits : 'FamixTParameter',
	#classTraits : 'FamixTParameter classTrait',
	#instVars : [
		'#parameterType => FMProperty'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBParameter class >> annotation [

	<FMClass: #Parameter super: #FamixPWBVariable>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixPWBParameter >> basicTypes [
	^ PWBCommonGrammar new basicTypeArray
]

{ #category : #testing }
FamixPWBParameter >> isBasic [
	^ self parameterType isKindOf: FamixPWBBasicType
]

{ #category : #accessing }
FamixPWBParameter >> parameterType [

	<FMProperty: #parameterType type: #String>
	<generated>
	^ parameterType
]

{ #category : #accessing }
FamixPWBParameter >> parameterType: anObject [
	<generated>
	parameterType := anObject
]
