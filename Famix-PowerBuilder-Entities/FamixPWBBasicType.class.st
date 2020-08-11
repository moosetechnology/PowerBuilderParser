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

{ #category : #accessing }
FamixPWBBasicType >> generateRandomValue [
	^ RandomReturnValueGenerator valueFor: self name
]
