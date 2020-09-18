Class {
	#name : #FamixPWBLibrary,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTNamedEntity + FamixTSourceEntity',
	#classTraits : 'FamixTNamedEntity classTrait + FamixTSourceEntity classTrait',
	#instVars : [
		'#userObjects => FMMany type: #FamixPWBmajorObject opposite: #library'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBLibrary class >> annotation [

	<FMClass: #Library super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixPWBLibrary >> addUserObject: anObject [
	<generated>
	^ self userObjects add: anObject
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
