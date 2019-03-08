Class {
	#name : #FamixPWBSqlQuery,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTNamed',
	#classTraits : 'FamixTNamed classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBSqlQuery class >> annotation [

	<MSEClass: #SqlQuery super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBSqlQuery class >> generatedSlotNames [
	<generated>
	'FamixPWBSqlQuery class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBSqlQuery class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed)
]

{ #category : #meta }
FamixPWBSqlQuery class >> requirements [

	<generated>
	^ {  }
]
