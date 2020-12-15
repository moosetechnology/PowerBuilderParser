Class {
	#name : #FamixPWBReference,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTReference + FamixTSourceEntity',
	#classTraits : 'FamixTReference classTrait + FamixTSourceEntity classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBReference class >> annotation [

	<FMClass: #Reference super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]
