Class {
	#name : #FamixPWBCustomType,
	#superclass : #MooseEntity,
	#traits : 'FamixPWBAbstractType',
	#classTraits : 'FamixPWBAbstractType classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBCustomType class >> annotation [

	<FMClass: #CustomType super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixPWBCustomType class >> metamodel [

	<generated>
	^ FamixPWBModel metamodel
]

{ #category : #testing }
FamixPWBCustomType >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBCustomType >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBCustomType >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBCustomType >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBCustomType >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBCustomType >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBCustomType >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBCustomType >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBCustomType >> isType [

	<generated>
	^ false
]
