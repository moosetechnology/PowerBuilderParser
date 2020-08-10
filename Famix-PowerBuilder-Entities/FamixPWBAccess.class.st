Class {
	#name : #FamixPWBAccess,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTAccess + FamixTSourceEntity',
	#classTraits : 'FamixTAccess classTrait + FamixTSourceEntity classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBAccess class >> annotation [

	<FMClass: #Access super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]
