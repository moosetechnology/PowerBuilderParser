Class {
	#name : #FamixPWBNamedEntity,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTNamedEntity + TDependencyQueries + TEntityMetaLevelDependency + FamixTNamed',
	#classTraits : 'FamixTNamedEntity classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait + FamixTNamed classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBNamedEntity class >> annotation [

	<FMClass: #NamedEntity super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]
