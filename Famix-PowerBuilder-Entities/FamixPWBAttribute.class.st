Class {
	#name : #FamixPWBAttribute,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixPWBPBTNamed - {#mooseNameOn:} + FamixTAccessible + FamixTAttribute + FamixTSourceEntity + FamixTWithTypes',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixTAccessible classTrait + FamixTAttribute classTrait + FamixTSourceEntity classTrait + FamixTWithTypes classTrait',
	#instVars : [
		'#attributeType => FMProperty'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBAttribute class >> annotation [

	<FMClass: #Attribute super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixPWBAttribute >> accessAssociation [
	^ FamixPWBAccess
]

{ #category : #accessing }
FamixPWBAttribute >> attributeType [

	<FMProperty: #attributeType type: #Object>
	<generated>
	^ attributeType
]

{ #category : #accessing }
FamixPWBAttribute >> attributeType: anObject [
	<generated>
	attributeType := anObject
]

{ #category : #accessing }
FamixPWBAttribute >> businessRulePath [
	businessRulePath
		ifNil: [ businessRulePath := self accessingMethods
				reject:
					[ :method | (method isKindOf: FamixPWBmajorObject) or: [ method parentType isNil ] ] ].
	^ businessRulePath asOrderedCollection
]

{ #category : #accessing }
FamixPWBAttribute >> deadArguments [
	^ {}
]

{ #category : #accessing }
FamixPWBAttribute >> deadLocalVariables [
	^ {}
]

{ #category : #testing }
FamixPWBAttribute >> isInstanceVariable [
	^ true
]

{ #category : #accessor }
FamixPWBAttribute >> typeName [
	^ attributeType name
]
