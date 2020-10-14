Class {
	#name : #FamixPWBSubRoutine,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixPWBPBTNamed - {#mooseNameOn:} + FamixTInvocable + FamixTMethod',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixTInvocable classTrait + FamixTMethod classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBSubRoutine class >> annotation [

	<FMClass: #SubRoutine super: #FamixPWBBehavioral>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixPWBSubRoutine >> isSubRoutine [
	^ true
]

{ #category : #'As yet unclassified' }
FamixPWBSubRoutine >> returnType [
	^ nil
]
