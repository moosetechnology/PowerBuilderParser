Class {
	#name : #FamixPWBAttribute,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixPWBPBTNamed - {#mooseNameOn:} + FamixTAccessible + FamixTAttribute + FamixTWithSourceAnchor + FamixTWithTypes',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixTAccessible classTrait + FamixTAttribute classTrait + FamixTWithSourceAnchor classTrait + FamixTWithTypes classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBAttribute class >> annotation [

	<FMClass: #Attribute super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixPWBAttribute >> accessAssociation [
	^ FamixPWBAccess
]

{ #category : #accessing }
FamixPWBAttribute >> deadArguments [
	^ {}
]

{ #category : #accessing }
FamixPWBAttribute >> deadLocalVariables [
	^ {}
]
