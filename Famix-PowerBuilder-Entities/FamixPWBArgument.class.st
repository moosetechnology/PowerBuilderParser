Class {
	#name : #FamixPWBArgument,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTNamedEntity + FamixTSourceEntity',
	#classTraits : 'FamixTNamedEntity classTrait + FamixTSourceEntity classTrait',
	#instVars : [
		'#argumentValue => FMProperty',
		'#invocation => FMOne type: #FamixPWBInvocation opposite: #arguments'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBArgument class >> annotation [

	<FMClass: #Argument super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixPWBArgument >> argumentValue [

	<FMProperty: #argumentValue type: #Object>
	<generated>
	^ argumentValue
]

{ #category : #accessing }
FamixPWBArgument >> argumentValue: anObject [
	<generated>
	argumentValue := anObject
]

{ #category : #accessing }
FamixPWBArgument >> invocation [
	"Relation named: #invocation type: #FamixPWBInvocation opposite: #arguments"

	<generated>
	<container>
	^ invocation
]

{ #category : #accessing }
FamixPWBArgument >> invocation: anObject [

	<generated>
	invocation := anObject
]

{ #category : #navigation }
FamixPWBArgument >> invocationGroup [
	<generated>
	<navigation: 'Invocation'>
	^ MooseSpecializedGroup with: self invocation
]
