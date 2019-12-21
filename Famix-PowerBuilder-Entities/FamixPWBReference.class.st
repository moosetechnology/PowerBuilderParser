Class {
	#name : #FamixPWBReference,
	#superclass : #FamixPWBAssociation,
	#traits : 'FamixTReference + FamixTWithSourceAnchor',
	#classTraits : 'FamixTReference classTrait + FamixTWithSourceAnchor classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBReference class >> annotation [

	<FMClass: #Reference super: #FamixPWBAssociation>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]
