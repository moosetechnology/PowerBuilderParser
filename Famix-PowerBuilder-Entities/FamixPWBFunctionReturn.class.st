Class {
	#name : #FamixPWBFunctionReturn,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTSourceEntity',
	#classTraits : 'FamixTSourceEntity classTrait',
	#instVars : [
		'#parentType => FMOne type: #FamixPWBRoutine opposite: #returns',
		'#returnType => FMProperty',
		'#returnValue => FMProperty'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBFunctionReturn class >> annotation [

	<FMClass: #FunctionReturn super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixPWBFunctionReturn >> parentType [
	"Relation named: #parentType type: #FamixPWBRoutine opposite: #returns"

	<generated>
	<container>
	^ parentType
]

{ #category : #accessing }
FamixPWBFunctionReturn >> parentType: anObject [

	<generated>
	parentType := anObject
]

{ #category : #navigation }
FamixPWBFunctionReturn >> parentTypeGroup [
	<generated>
	<navigation: 'ParentType'>
	^ MooseGroup with: self parentType
]

{ #category : #accessing }
FamixPWBFunctionReturn >> returnType [

	<FMProperty: #returnType type: #Object>
	<generated>
	^ returnType
]

{ #category : #accessing }
FamixPWBFunctionReturn >> returnType: anObject [
	<generated>
	returnType := anObject
]

{ #category : #accessing }
FamixPWBFunctionReturn >> returnValue [

	<FMProperty: #returnValue type: #Object>
	<generated>
	^ returnValue
]

{ #category : #accessing }
FamixPWBFunctionReturn >> returnValue: anObject [
	<generated>
	returnValue := anObject
]
