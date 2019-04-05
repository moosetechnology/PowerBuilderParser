Class {
	#name : #FamixPWBFunction,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixTNamed',
	#classTraits : 'FamixTNamed classTrait',
	#instVars : [
		'#variables => FMMany type: #FamixPWBVariable opposite: #function'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBFunction class >> annotation [

	<MSEClass: #Function super: #FamixPWBBehavioral>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBFunction class >> generatedSlotNames [
	<generated>
	'FamixPWBFunction class>>#generatedSlotNames'.
	^ #(variables)
]

{ #category : #generator }
FamixPWBFunction class >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed)
]

{ #category : #meta }
FamixPWBFunction class >> requirements [

	<generated>
	^ {  }
]

{ #category : #helpers }
FamixPWBFunction >> createStubValueHolderNamed: aString [ 
	^ self createValueHolderNamed: aString
]

{ #category : #helpers }
FamixPWBFunction >> createValueHolderNamed: aString [ 
	^ FamixPWBVariable new
		"belongsTo: self;"
		mooseModel: self mooseModel;
		name: aString;
		yourself
]

{ #category : #accessors }
FamixPWBFunction >> reachableEntities [
	^ self variables
]

{ #category : #accessing }
FamixPWBFunction >> variables [

	<generated>
	^ variables
]

{ #category : #accessing }
FamixPWBFunction >> variables: anObject [

	<generated>
	variables value: anObject

]

{ #category : #navigation }
FamixPWBFunction >> variablesGroup [

	<generated>
	<navigation: 'Variables'>
	^ MooseGroup
			withAll: (self variables asSet)
]
