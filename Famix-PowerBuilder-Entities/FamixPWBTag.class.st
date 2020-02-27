Class {
	#name : #FamixPWBTag,
	#superclass : #MooseEntity,
	#traits : 'FamixPWBTTag',
	#classTraits : 'FamixPWBTTag classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBTag class >> annotation [

	<FMClass: #Tag super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixPWBTag class >> metamodel [

	<generated>
	^ FamixPWBModel metamodel
]

{ #category : #testing }
FamixPWBTag >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTag >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTag >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTag >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTag >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTag >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTag >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTag >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTag >> isType [

	<generated>
	^ false
]

{ #category : #accessing }
FamixPWBTag >> unsafeRemoveEntity: anObject [
	entities remove: anObject
]
