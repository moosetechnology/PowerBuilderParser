Class {
	#name : #FamixPWBEntity,
	#superclass : #MooseEntity,
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixPWBEntity class >> metamodel [

	<generated>
	^ FamixPWBModel metamodel
]

{ #category : #testing }
FamixPWBEntity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isBehavioural [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isType [

	<generated>
	^ false
]
