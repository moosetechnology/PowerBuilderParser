Class {
	#name : #FamixPWBFunctionReturn,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixPWBPBTNamed + FamixTSourceEntity',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixTSourceEntity classTrait',
	#instVars : [
		'#behavioral => FMOne type: #FamixPWBBehavioral opposite: #returns',
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
	^ MooseGroup with: self behavioral
]

{ #category : #'maryline-log' }
FamixPWBFunctionReturn >> insertLogIn: aString [
	| log |
	log := 'f_mrl_logger().return_value_logger().log('
		, self returnValue asString , ',"' , behavioral name , '","'
		, behavioral parentType name , '")' , String crlf , self sourceText
		, String crlf.
	^ aString copyReplaceAll: self sourceText with: log
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
