Class {
	#name : #FamixPWBUserObject,
	#superclass : #FamixPWBmajorObject,
	#traits : 'FamixPWBAbstractType + FamixTWithInvocations',
	#classTraits : 'FamixPWBAbstractType classTrait + FamixTWithInvocations classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBUserObject class >> annotation [

	<FMClass: #UserObject super: #FamixPWBmajorObject>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixPWBUserObject >> brPath: aCollection [
	businessRulePath := aCollection
]
