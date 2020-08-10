Class {
	#name : #FamixPWBRoutine,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixPWBPBTNamed - {#mooseNameOn:} + FamixTFunction',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixTFunction classTrait',
	#instVars : [
		'#returnType => FMProperty'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBRoutine class >> annotation [

	<FMClass: #Routine super: #FamixPWBBehavioral>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixPWBRoutine >> returnType [

	<FMProperty: #returnType type: #Object>
	<generated>
	^ returnType
]

{ #category : #accessing }
FamixPWBRoutine >> returnType: anObject [
	<generated>
	returnType := anObject
]
