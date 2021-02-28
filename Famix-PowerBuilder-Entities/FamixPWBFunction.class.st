Class {
	#name : #FamixPWBFunction,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTMethod',
	#classTraits : 'FamixTMethod classTrait',
	#instVars : [
		'#returnType => FMProperty'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBFunction class >> annotation [

	<FMClass: #Function super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #converting }
FamixPWBFunction >> dependingFamixBehavioural: aFamixBehavioural [
	| invok |
	^invok := FamixPWBInvocation new
		candidates: {  self } ;
		sender: aFamixBehavioural ;
		mooseModel: self mooseModel ;
		yourself
]

{ #category : #testing }
FamixPWBFunction >> isFunction [
	^ true
]

{ #category : #accessing }
FamixPWBFunction >> parameters [
	"Relation named: #parameters type: #FamixPWBParameter opposite: #behavioral"

	
	^ parameters
]

{ #category : #accessing }
FamixPWBFunction >> returnType [

	<FMProperty: #returnType type: #Object>
	<generated>
	^ returnType
]

{ #category : #accessing }
FamixPWBFunction >> returnType: anObject [
	<generated>
	returnType := anObject
]

{ #category : #accessing }
FamixPWBFunction >> updateType: anEntity [
	self returnType: anEntity.
	self returns do: #updateType
]
