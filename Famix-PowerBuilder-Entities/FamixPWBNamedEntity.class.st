Class {
	#name : #FamixPWBNamedEntity,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTNamedEntity + FamixTNamed',
	#classTraits : 'FamixTNamedEntity classTrait + FamixTNamed classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBNamedEntity class >> annotation [

	<FMClass: #NamedEntity super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixPWBNamedEntity class >> isDeprecated [
	"TNamed was renamed #TNamedEntity. You should update your generator."

	^ false
]
