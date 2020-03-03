Class {
	#name : #FamixPWBInvocation,
	#superclass : #MooseEntity,
	#traits : 'FamixTHasSignature + FamixTInvocation + FamixTWithSourceAnchor',
	#classTraits : 'FamixTHasSignature classTrait + FamixTInvocation classTrait + FamixTWithSourceAnchor classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBInvocation class >> annotation [

	<FMClass: #Invocation super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixPWBInvocation class >> metamodel [

	<generated>
	^ FamixPWBModel metamodel
]

{ #category : #testing }
FamixPWBInvocation >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBInvocation >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBInvocation >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBInvocation >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBInvocation >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBInvocation >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBInvocation >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBInvocation >> isType [

	<generated>
	^ false
]
