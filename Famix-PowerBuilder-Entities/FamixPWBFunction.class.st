Class {
	#name : #FamixPWBFunction,
	#superclass : #FamixPWBRoutine,
	#traits : 'FamixTTypedEntity',
	#classTraits : 'FamixTTypedEntity classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBFunction class >> annotation [

	<FMClass: #Function super: #FamixPWBRoutine>
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
FamixPWBFunction >> updateType: anEntity [
	self returnType: anEntity.
	self returns do: #updateType
]
