Class {
	#name : #FamixPWBReference,
	#superclass : #MooseEntity,
	#traits : 'FamixTReference + FamixTWithSourceAnchor',
	#classTraits : 'FamixTReference classTrait + FamixTWithSourceAnchor classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBReference class >> annotation [

	<FMClass: #Reference super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixPWBReference class >> metamodel [

	<generated>
	^ FamixPWBModel metamodel
]

{ #category : #testing }
FamixPWBReference >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBReference >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBReference >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBReference >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBReference >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBReference >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBReference >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBReference >> isType [

	<generated>
	^ false
]
