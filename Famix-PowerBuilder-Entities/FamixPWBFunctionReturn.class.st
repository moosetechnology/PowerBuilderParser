Class {
	#name : #FamixPWBFunctionReturn,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixPWBPBTNamed + FamixTSourceEntity',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixTSourceEntity classTrait',
	#instVars : [
		'#behavioral => FMOne type: #FamixPWBBehavioral opposite: #returns',
		'#doesBelongToSingleLineIfStatement => FMProperty',
		'#returnValue => FMProperty',
		'#type => FMProperty'
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
FamixPWBFunctionReturn >> behavioral [
	"Relation named: #behavioral type: #FamixPWBBehavioral opposite: #returns"

	<generated>
	<container>
	^ behavioral
]

{ #category : #accessing }
FamixPWBFunctionReturn >> behavioral: anObject [

	<generated>
	behavioral := anObject
]

{ #category : #navigation }
FamixPWBFunctionReturn >> behavioralGroup [
	<generated>
	<navigation: 'Behavioral'>
	^ MooseSpecializedGroup with: self behavioral
]

{ #category : #accessing }
FamixPWBFunctionReturn >> doesBelongToSingleLineIfStatement [

	<FMProperty: #doesBelongToSingleLineIfStatement type: #Boolean>
	<generated>
	^ doesBelongToSingleLineIfStatement
]

{ #category : #accessing }
FamixPWBFunctionReturn >> doesBelongToSingleLineIfStatement: anObject [
	<generated>
	doesBelongToSingleLineIfStatement := anObject
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

{ #category : #accessing }
FamixPWBFunctionReturn >> type [

	<FMProperty: #type type: #Object>
	<generated>
	^ type
]

{ #category : #accessing }
FamixPWBFunctionReturn >> type: anObject [
	<generated>
	type := anObject
]
