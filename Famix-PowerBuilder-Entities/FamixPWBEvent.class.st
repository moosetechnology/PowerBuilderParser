Class {
	#name : #FamixPWBEvent,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixPWBPBTNamed - {#mooseNameOn:} + FamixTInvocable + FamixTMethod',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixTInvocable classTrait + FamixTMethod classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBEvent class >> annotation [

	<FMClass: #Event super: #FamixPWBBehavioral>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixPWBEvent >> isEvent [
	^ true
]

{ #category : #accessing }
FamixPWBEvent >> returnType [
	^ nil
]
