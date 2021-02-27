Class {
	#name : #FamixPWBRoutine,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixPWBPBTNamed - {#mooseNameOn:} + FamixTHasSignature + FamixTTypedEntity + FamixTWithParameters',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixTHasSignature classTrait + FamixTTypedEntity classTrait + FamixTWithParameters classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBRoutine class >> annotation [

	<FMClass: #Routine super: #FamixPWBBehavioral>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]
