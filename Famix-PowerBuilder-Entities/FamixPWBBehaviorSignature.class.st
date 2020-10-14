Class {
	#name : #FamixPWBBehaviorSignature,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixPWBPBTNamed + FamixTSourceEntity',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixTSourceEntity classTrait',
	#instVars : [
		'#behavioral => FMOne type: #FamixPWBBehavioral opposite: #signature'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBBehaviorSignature class >> annotation [

	<FMClass: #BehaviorSignature super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixPWBBehaviorSignature >> behavioral [
	"Relation named: #behavioral type: #FamixPWBBehavioral opposite: #signature"

	<generated>
	<container>
	<derived>
	^ behavioral
]

{ #category : #accessing }
FamixPWBBehaviorSignature >> behavioral: anObject [

	<generated>
	behavioral := anObject
]

{ #category : #navigation }
FamixPWBBehaviorSignature >> behavioralGroup [
	<generated>
	<navigation: 'Behavioral'>
	^ MooseGroup with: self behavioral
]
