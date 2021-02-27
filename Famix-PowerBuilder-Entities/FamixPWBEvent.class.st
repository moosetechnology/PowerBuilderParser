Class {
	#name : #FamixPWBEvent,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixPWBPBTNamed - {#mooseNameOn:} + FamixTInvocable + FamixTMethod + FamixTSourceEntity + FamixTWithAccesses + FamixTWithInvocations + FamixTWithReferences',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixTInvocable classTrait + FamixTMethod classTrait + FamixTSourceEntity classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FamixTWithReferences classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBEvent class >> annotation [

	<FMClass: #Event super: #FamixPWBEntity>
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
