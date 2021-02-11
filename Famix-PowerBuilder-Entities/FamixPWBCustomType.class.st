Class {
	#name : #FamixPWBCustomType,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixPWBAbstractType',
	#classTraits : 'FamixPWBAbstractType classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBCustomType class >> annotation [

	<FMClass: #CustomType super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixPWBCustomType >> isBasic [
	^ false
]

{ #category : #testing }
FamixPWBCustomType >> isPWBDataWindow [
	^ {'uo_datawindow' . 'datawindow'} includes: self name
]

{ #category : #api }
FamixPWBCustomType >> reachableEntities [
	^ #()
]
