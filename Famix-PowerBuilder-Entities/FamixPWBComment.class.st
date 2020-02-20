Class {
	#name : #FamixPWBComment,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixPWBTWithTags + FamixTComment',
	#classTraits : 'FamixPWBTWithTags classTrait + FamixTComment classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBComment class >> annotation [

	<FMClass: #Comment super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]
