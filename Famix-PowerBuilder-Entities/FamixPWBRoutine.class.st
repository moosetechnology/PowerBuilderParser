Class {
	#name : #FamixPWBRoutine,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixPWBPBTNamed - {#mooseNameOn:} + FamixTFunction',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixTFunction classTrait',
	#instVars : [
		'#returns => FMMany type: #FamixPWBFunctionReturn opposite: #parentType'
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

{ #category : #adding }
FamixPWBRoutine >> addReturn: anObject [
	<generated>
	^ self returns add: anObject
]

{ #category : #accessing }
FamixPWBRoutine >> returns [
	"Relation named: #returns type: #FamixPWBFunctionReturn opposite: #parentType"

	<generated>
	<derived>
	^ returns
]

{ #category : #accessing }
FamixPWBRoutine >> returns: anObject [

	<generated>
	returns value: anObject
]

{ #category : #navigation }
FamixPWBRoutine >> returnsGroup [
	<generated>
	<navigation: 'Returns'>
	^ MooseGroup withAll: self returns asSet
]
