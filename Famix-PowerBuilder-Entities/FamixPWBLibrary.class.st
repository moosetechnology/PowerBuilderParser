Class {
	#name : #FamixPWBLibrary,
	#superclass : #MooseEntity,
	#traits : 'FamixPWBTNamed + FamixTWithSourceAnchor + FamixTNamed',
	#classTraits : 'FamixPWBTNamed classTrait + FamixTWithSourceAnchor classTrait + FamixTNamed classTrait',
	#instVars : [
		'#userObjects => FMMany type: #FamixPWBmajorObject opposite: #library'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBLibrary class >> annotation [

	<FMClass: #Library super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixPWBLibrary class >> metamodel [

	<generated>
	^ FamixPWBModel metamodel
]

{ #category : #adding }
FamixPWBLibrary >> addUserObject: anObject [
	<generated>
	^ self userObjects add: anObject
]

{ #category : #testing }
FamixPWBLibrary >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBLibrary >> isType [

	<generated>
	^ false
]

{ #category : #accessing }
FamixPWBLibrary >> userObjects [
	"Relation named: #userObjects type: #FamixPWBmajorObject opposite: #library"

	<generated>
	<derived>
	^ userObjects
]

{ #category : #accessing }
FamixPWBLibrary >> userObjects: anObject [

	<generated>
	userObjects value: anObject
]

{ #category : #navigation }
FamixPWBLibrary >> userObjectsGroup [
	<generated>
	<navigation: 'UserObjects'>
	^ MooseGroup withAll: self userObjects asSet
]
