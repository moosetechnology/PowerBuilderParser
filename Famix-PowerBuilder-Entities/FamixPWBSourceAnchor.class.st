Class {
	#name : #FamixPWBSourceAnchor,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTSourceAnchor + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FamixTSourceAnchor classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBSourceAnchor class >> annotation [

	<MSEClass: #SourceAnchor super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBSourceAnchor class >> generatedSlotNames [
	<generated>
	'FamixPWBSourceAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBSourceAnchor class >> generatedTraitNames [
	<generated>
	^ #(FamixTSourceAnchor TDependencyQueries TEntityMetaLevelDependency)
]

{ #category : #meta }
FamixPWBSourceAnchor class >> requirements [

	<generated>
	^ {  }
]
