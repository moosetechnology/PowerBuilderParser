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

	<MSEClass: #GraphicComponent super: #FamixPWBBehavioral>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBGraphicComponent class >> generatedSlotNames [
	<generated>
	'FamixPWBGraphicComponent class>>#generatedSlotNames'.
	^ #(dataWindow)
]

{ #category : #generator }
FamixPWBGraphicComponent class >> generatedTraitNames [
	<generated>
	^ #(FamixTWithAttributes)
]

{ #category : #meta }
FamixPWBGraphicComponent class >> requirements [

	<generated>
	^ { FamixPWBDataWindow }
]

{ #category : #accessing }
FamixPWBGraphicComponent >> belongsTo [

	<generated>
	^ self dataWindow

]

{ #category : #accessing }
FamixPWBGraphicComponent >> belongsTo: anObject [

	<generated>
	self dataWindow: anObject

]

{ #category : #accessing }
FamixPWBGraphicComponent >> dataWindow [

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
	^ MooseGroup
			with: (self dataWindow)
]
