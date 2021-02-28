Class {
	#name : #FamixPWBLocalVariable,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTLocalVariable',
	#classTraits : 'FamixTLocalVariable classTrait',
	#instVars : [
		'#parentBehaviouralEntity => FMOne type: #FamixPWBBehavioral opposite: #localVariables'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBLocalVariable class >> annotation [

	<FMClass: #LocalVariable super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixPWBLocalVariable >> beMemberOfBehavioural: aFamixBehavioural [
	self parentBehaviouralEntity: aFamixBehavioural
]

{ #category : #accessing }
FamixPWBLocalVariable >> parentBehaviouralEntity [
	"Relation named: #parentBehaviouralEntity type: #FamixPWBBehavioral opposite: #localVariables"

	<generated>
	<container>
	^ parentBehaviouralEntity
]

{ #category : #accessing }
FamixPWBLocalVariable >> parentBehaviouralEntity: anObject [

	<generated>
	parentBehaviouralEntity := anObject
]

{ #category : #navigation }
FamixPWBLocalVariable >> parentBehaviouralEntityGroup [
	<generated>
	<navigation: 'ParentBehaviouralEntity'>
	^ MooseSpecializedGroup with: self parentBehaviouralEntity
]
