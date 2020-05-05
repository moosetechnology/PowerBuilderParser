Class {
	#name : #FamixPWBAttribute,
	#superclass : #MooseEntity,
	#traits : 'FamixPWBPBTNamed - {#mooseNameOn:} + FamixTAccessible + FamixTAttribute + FamixTWithSourceAnchor + FamixTWithTypes',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixTAccessible classTrait + FamixTAttribute classTrait + FamixTWithSourceAnchor classTrait + FamixTWithTypes classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBAttribute class >> annotation [

	<FMClass: #Attribute super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixPWBAttribute class >> metamodel [

	<generated>
	^ FamixPWBModel metamodel
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

{ #category : #testing }
FamixPWBAttribute >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAttribute >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAttribute >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAttribute >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAttribute >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAttribute >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAttribute >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAttribute >> isType [

	<generated>
	^ false
]
