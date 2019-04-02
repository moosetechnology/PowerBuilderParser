Class {
	#name : #FamixPWBUserObject,
	#superclass : #FamixPWBSourcedEntity,
	#traits : 'FamixTNamed + FamixTWithAccesses + FamixTWithAttributes',
	#classTraits : 'FamixTNamed classTrait + FamixTWithAccesses classTrait + FamixTWithAttributes classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBUserObject class >> annotation [

	<MSEClass: #UserObject super: #FamixPWBSourcedEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBUserObject class >> generatedSlotNames [
	<generated>
	'FamixPWBUserObject class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBUserObject class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed FamixTWithAccesses FamixTWithAttributes)
]

{ #category : #meta }
FamixPWBUserObject class >> requirements [

	<generated>
	^ {  }
]

{ #category : #helpers }
FamixPWBUserObject >> createAccessTo: aFamixPWBAttribute writing: aBoolean [ 
	^ FamixPWBAccess new
		from: self;
		to: aFamixPWBAttribute;
		isWrite: aBoolean;
		mooseModel: self mooseModel;
		yourself
]

{ #category : #helpers }
FamixPWBUserObject >> createStubValueHolderNamed: aString [ 
	^ FamixPWBAttribute new
		belongsTo: self;
		mooseModel: self mooseModel;
		name: aString;
		yourself
]

{ #category : #accessing }
FamixPWBUserObject >> reachableEntities [
	^ self attributes
]
