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
	^ MooseSpecializedGroup with: self dataWindow
]

{ #category : #accessing }
FamixPWBGraphicComponent >> parentType: anObject [
  self dataWindow: anObject.
  self resetMooseName
]
