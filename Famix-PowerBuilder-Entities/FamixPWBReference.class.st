Class {
	#name : #FamixPWBReference,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTReference + FamixTWithSourceAnchor',
	#classTraits : 'FamixTReference classTrait + FamixTWithSourceAnchor classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBReference class >> annotation [

	<FMClass: #Reference super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]
