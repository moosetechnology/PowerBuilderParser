Class {
	#name : #FamixPWBGraphicComponent,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixTWithAttributes',
	#classTraits : 'FamixTWithAttributes classTrait',
	#instVars : [
		'#dataWindow => FMOne type: #FamixPWBDataWindow opposite: #graphicComponents'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBGraphicComponent class >> annotation [

	<FMClass: #GraphicComponent super: #FamixPWBBehavioral>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixPWBGraphicComponent >> dataWindow [
	"Relation named: #dataWindow type: #FamixPWBDataWindow opposite: #graphicComponents"

	<generated>
	<container>
	^ dataWindow
]

{ #category : #accessing }
FamixPWBGraphicComponent >> dataWindow: anObject [

	<generated>
	dataWindow := anObject
]

{ #category : #navigation }
FamixPWBGraphicComponent >> dataWindowGroup [
	<generated>
	<navigation: 'DataWindow'>
	^ MooseGroup with: self dataWindow
]

{ #category : #accessing }
FamixPWBGraphicComponent >> parentType [
	"Relation named: #parentType type: #FamixTWithMethods opposite: #methods"

	<generated>
	<FMComment: 'Type declaring the method. It provides the implementation for belongsTo.'>
	<container>
	^ dataWindow
]

{ #category : #accessing }
FamixPWBGraphicComponent >> parentType: anObject [
  self dataWindow: anObject.
  self resetMooseName
]
