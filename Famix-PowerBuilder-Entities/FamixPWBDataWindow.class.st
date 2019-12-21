Class {
	#name : #FamixPWBDataWindow,
	#superclass : #FamixPWBmajorObject,
	#traits : 'FamixTNamed + FamixTWithAttributes + FamixTWithInvocations + FamixTWithSourceAnchor',
	#classTraits : 'FamixTNamed classTrait + FamixTWithAttributes classTrait + FamixTWithInvocations classTrait + FamixTWithSourceAnchor classTrait',
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
