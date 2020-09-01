Class {
	#name : #FamixPWBDataWindow,
	#superclass : #FamixPWBmajorObject,
	#traits : 'FamixTNamedEntity + FamixTSourceEntity + FamixTWithAttributes + FamixTWithInvocations + FamixTNamed',
	#classTraits : 'FamixTNamedEntity classTrait + FamixTSourceEntity classTrait + FamixTWithAttributes classTrait + FamixTWithInvocations classTrait + FamixTNamed classTrait',
	#instVars : [
		'#graphicComponents => FMMany type: #FamixPWBGraphicComponent opposite: #dataWindow'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBDataWindow class >> annotation [

	<FMClass: #DataWindow super: #FamixPWBmajorObject>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixPWBDataWindow >> addGraphicComponent: anObject [
	<generated>
	^ self graphicComponents add: anObject
]

{ #category : #accessing }
FamixPWBDataWindow >> graphicComponents [
	"Relation named: #graphicComponents type: #FamixPWBGraphicComponent opposite: #dataWindow"

	<generated>
	<derived>
	^ graphicComponents
]

{ #category : #accessing }
FamixPWBDataWindow >> graphicComponents: anObject [

	<generated>
	graphicComponents value: anObject
]

{ #category : #navigation }
FamixPWBDataWindow >> graphicComponentsGroup [
	<generated>
	<navigation: 'GraphicComponents'>
	^ MooseGroup withAll: self graphicComponents asSet
]
