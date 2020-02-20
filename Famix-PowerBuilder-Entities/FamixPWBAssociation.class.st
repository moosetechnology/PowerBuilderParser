Class {
	#name : #FamixPWBAssociation,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixPWBTWithTags + FamixTAssociation + TAssociationMetaLevelDependency',
	#classTraits : 'FamixPWBTWithTags classTrait + FamixTAssociation classTrait + TAssociationMetaLevelDependency classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBAssociation class >> annotation [

	<FMClass: #Association super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]
