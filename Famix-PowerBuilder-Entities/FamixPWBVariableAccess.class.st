Class {
	#name : #FamixPWBVariableAccess,
	#superclass : #MooseEntity,
	#traits : 'FamixTAccess + FamixTWithSourceAnchor',
	#classTraits : 'FamixTAccess classTrait + FamixTWithSourceAnchor classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBVariableAccess class >> annotation [

	<FMClass: #VariableAccess super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixPWBVariableAccess class >> metamodel [

	<generated>
	^ FamixPWBModel metamodel
]

{ #category : #testing }
FamixPWBVariableAccess >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariableAccess >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariableAccess >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariableAccess >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariableAccess >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariableAccess >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariableAccess >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBVariableAccess >> isType [

	<generated>
	^ false
]
