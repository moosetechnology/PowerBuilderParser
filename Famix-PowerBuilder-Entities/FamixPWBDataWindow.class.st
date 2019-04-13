Class {
	#name : #FamixPWBDataWindow,
	#superclass : #FamixPWBmajorObject,
	#traits : 'FamixTNamed + FamixTWithAttributes',
	#classTraits : 'FamixTNamed classTrait + FamixTWithAttributes classTrait',
	#instVars : [
		'#graphicComponents => FMMany type: #FamixPWBGraphicComponent opposite: #dataWindow'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBDataWindow class >> annotation [

	<MSEClass: #DataWindow super: #FamixPWBmajorObject>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBDataWindow class >> generatedSlotNames [
	<generated>
	'FamixPWBDataWindow class>>#generatedSlotNames'.
	^ #(graphicComponents)
]

{ #category : #generator }
FamixPWBDataWindow class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed FamixTWithAttributes)
]

{ #category : #meta }
FamixPWBDataWindow class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FamixPWBDataWindow >> graphicComponents [

	<generated>
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
	^ MooseGroup
			withAll: (self graphicComponents asSet)
]
