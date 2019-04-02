Class {
	#name : #FamixPWBDataWindow,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTNamed + FamixTWithAccesses + FamixTWithAttributes',
	#classTraits : 'FamixTNamed classTrait + FamixTWithAccesses classTrait + FamixTWithAttributes classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBDataWindow class >> annotation [

	<MSEClass: #DataWindow super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBDataWindow class >> generatedSlotNames [
	<generated>
	'FamixPWBDataWindow class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBDataWindow class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed FamixTWithAccesses FamixTWithAttributes)
]

{ #category : #meta }
FamixPWBDataWindow class >> requirements [

	<generated>
	^ {  }
]

{ #category : #helpers }
FamixPWBDataWindow >> createAccessTo: aFamixPWBAttribute writing: aBoolean [
	^ FamixPWBAccess new
		from: self;
		to: aFamixPWBAttribute;
		isWrite: aBoolean;
		mooseModel: self mooseModel;
		yourself
]

{ #category : #helpers }
FamixPWBDataWindow >> createStubValueHolderNamed: aString [
	^ FamixPWBAttribute new
		belongsTo: self;
		mooseModel: self mooseModel;
		name: aString;
		yourself
]

{ #category : #'scopre resolution' }
FamixPWBDataWindow >> reachableEntities [
	^ self attributes
]
