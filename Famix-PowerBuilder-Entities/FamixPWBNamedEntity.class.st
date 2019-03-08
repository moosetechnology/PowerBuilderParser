Class {
	#name : #FamixPWBNamedEntity,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTNamed + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FamixTNamed classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBNamedEntity class >> annotation [

	<MSEClass: #NamedEntity super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBNamedEntity class >> generatedSlotNames [
	<generated>
	'FamixPWBNamedEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBNamedEntity class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed TDependencyQueries TEntityMetaLevelDependency)
]

{ #category : #meta }
FamixPWBNamedEntity class >> requirements [

	<generated>
	^ {  }
]
