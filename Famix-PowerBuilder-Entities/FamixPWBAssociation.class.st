Class {
	#name : #FamixPWBAssociation,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTAssociation + TAssociationMetaLevelDependency',
	#classTraits : 'FamixTAssociation classTrait + TAssociationMetaLevelDependency classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBAssociation class >> annotation [

	<MSEClass: #Association super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBAssociation class >> generatedSlotNames [
	<generated>
	'FamixPWBAssociation class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBAssociation class >> generatedTraitNames [
	<generated>
	^ #(FamixTAssociation TAssociationMetaLevelDependency)
]

{ #category : #meta }
FamixPWBAssociation class >> requirements [

	<generated>
	^ {  }
]
