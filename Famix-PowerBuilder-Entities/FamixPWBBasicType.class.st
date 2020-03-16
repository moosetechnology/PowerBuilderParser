Class {
	#name : #FamixPWBBasicType,
	#superclass : #MooseEntity,
	#traits : 'FamixPWBAbstractType',
	#classTraits : 'FamixPWBAbstractType classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBBasicType class >> annotation [

	<FMClass: #BasicType super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixPWBBasicType class >> metamodel [

	<generated>
	^ FamixPWBModel metamodel
]

{ #category : #testing }
FamixPWBBasicType >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBasicType >> isType [

	<generated>
	^ false
]
