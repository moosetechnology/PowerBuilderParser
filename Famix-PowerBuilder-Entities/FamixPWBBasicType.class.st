Class {
	#name : #FamixPWBBasicType,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixPWBAbstractType',
	#classTraits : 'FamixPWBAbstractType classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBBasicType class >> annotation [

	<FMClass: #BasicType super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixPWBBasicType >> isBasic [
	^ true
]

{ #category : #testing }
FamixPWBBasicType >> isPWBDataWindow [
	^ false
]

{ #category : #accessing }
FamixPWBBasicType >> owner: aFamixPWBInstanceVariable [
	
]
