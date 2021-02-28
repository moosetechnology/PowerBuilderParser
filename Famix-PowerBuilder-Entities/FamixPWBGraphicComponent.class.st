Class {
	#name : #FamixPWBGraphicComponent,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixTWithAttributes',
	#classTraits : 'FamixTWithAttributes classTrait',
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
FamixPWBGraphicComponent >> parentType: anObject [
  self dataWindow: anObject.
  self resetMooseName
]
