Class {
	#name : #FamixPWBParameter,
	#superclass : #FamixPWBVariable,
	#traits : 'FamixTParameter',
	#classTraits : 'FamixTParameter classTrait',
	#instVars : [
		'#parameterType => FMProperty',
		'#startPos => FMProperty'
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

{ #category : #accessing }
FamixPWBParameter >> = aFamixPWBParameter [
	^ aFamixPWBParameter parameterType = self parameterType
		and: [ aFamixPWBParameter name = self name ]
]

{ #category : #testing }
FamixPWBParameter >> basicTypes [
	^ PWBCommonGrammar new basicTypeArray
]

{ #category : #testing }
FamixPWBParameter >> isBasic [
	^ self parameterType isKindOf: FamixPWBBasicType
]

{ #category : #testing }
FamixPWBParameter >> isPWBDataWindow [
	^ {'uo_datawindow' . 'datawindow'} includes: self parameterType
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

{ #category : #accessing }
FamixPWBParameter >> startPos [

	<FMProperty: #startPos type: #Number>
	<generated>
	^ startPos
]

{ #category : #accessing }
FamixPWBParameter >> startPos: anObject [
	<generated>
	startPos := anObject
]
