Class {
	#name : #FamixPWBParameter,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTAccessible + FamixTNamedEntity + FamixTParameter + FamixTSourceEntity + FamixTWithTypes',
	#classTraits : 'FamixTAccessible classTrait + FamixTNamedEntity classTrait + FamixTParameter classTrait + FamixTSourceEntity classTrait + FamixTWithTypes classTrait',
	#instVars : [
		'#behavioral => FMOne type: #FamixPWBBehavioral opposite: #parameters',
		'#parameterType => FMProperty',
		'#startPos => FMProperty'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBParameter class >> annotation [

	<FMClass: #Parameter super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixPWBParameter >> basicTypes [
	^ PWBCommonGrammar new basicTypeArray
]

{ #category : #accessing }
FamixPWBParameter >> behavioral [
	"Relation named: #behavioral type: #FamixPWBBehavioral opposite: #parameters"

	<generated>
	<container>
	^ behavioral
]

{ #category : #accessing }
FamixPWBParameter >> behavioral: anObject [

	<generated>
	behavioral := anObject
]

{ #category : #navigation }
FamixPWBParameter >> behavioralGroup [
	<generated>
	<navigation: 'Behavioral'>
	^ MooseGroup with: self behavioral
]

{ #category : #testing }
FamixPWBParameter >> isBasic [
	^ self parameterType isKindOf: FamixPWBBasicType
]

{ #category : #testing }
FamixPWBParameter >> isPWBDataWindow [
	^ self parameterType isPWBDataWindow
]

{ #category : #'as yet unclassified' }
FamixPWBParameter >> logOn: stream context: aString [
	stream
		<< 'f_mrl_logger().invocation_parameter_logger().log("';
		<< self name;
		<< '",';
		<< self name;
		<< ',"';
		<< self behavioral parentType name;
		<< '","';
		<< self behavioral name;
		<< '"';
		<< ',"';
		<< aString;
		<< '")';
		crlf.
	^ stream
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
