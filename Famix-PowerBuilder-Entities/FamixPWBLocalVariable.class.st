Class {
	#name : #FamixPWBLocalVariable,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTLocalVariable',
	#classTraits : 'FamixTLocalVariable classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBLocalVariable class >> annotation [

	<FMClass: #LocalVariable super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #converting }
FamixPWBLocalVariable >> addDependencyToIR: anIRType [
	(anIRType toFamix: self mooseModel)
		addTypedEntity: self
]
