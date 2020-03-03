Class {
	#name : #FamixPWBAccess,
	#superclass : #MooseEntity,
	#traits : 'FamixTAccess + FamixTWithSourceAnchor',
	#classTraits : 'FamixTAccess classTrait + FamixTWithSourceAnchor classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBAccess class >> annotation [

	<FMClass: #Access super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixPWBAccess class >> metamodel [

	<generated>
	^ FamixPWBModel metamodel
]

{ #category : #testing }
FamixPWBAccess >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAccess >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAccess >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAccess >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAccess >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAccess >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAccess >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBAccess >> isType [

	<generated>
	^ false
]
