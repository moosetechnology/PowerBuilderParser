Class {
	#name : #FamixPWBAttribute,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTAccessible + FamixTAttribute + FamixTWithTypes',
	#classTraits : 'FamixTAccessible classTrait + FamixTAttribute classTrait + FamixTWithTypes classTrait',
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
