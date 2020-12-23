Class {
	#name : #FamixPWBTrigger,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixPWBPBTNamed - {#mooseNameOn:} + FamixTMethod + FamixTWithAttributes',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixTMethod classTrait + FamixTWithAttributes classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBTrigger class >> annotation [

	<FMClass: #Trigger super: #FamixPWBBehavioral>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]
