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

{ #category : #'as yet unclassified' }
FamixPWBAttribute >> isResolvable [
	^ false
]

{ #category : #accessing }
FamixPWBAttribute >> reachableEntities [
	^self attributeType
		ifNotNil: [ self attributeType reachableEntities ]
		
]

{ #category : #accessor }
FamixPWBAttribute >> typeName [
	^ attributeType name
]

{ #category : #'as yet unclassified' }
FamixPWBAttribute >> updateType: anEntity [
	self attributeType: anEntity
]
