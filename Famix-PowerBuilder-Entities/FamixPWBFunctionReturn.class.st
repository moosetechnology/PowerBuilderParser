Class {
	#name : #FamixPWBFunctionReturn,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTSourceEntity',
	#classTraits : 'FamixTSourceEntity classTrait',
	#instVars : [
		'#parentType => FMOne type: #FamixPWBRoutine opposite: #returns'
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
