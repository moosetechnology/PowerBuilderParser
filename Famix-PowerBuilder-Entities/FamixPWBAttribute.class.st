Class {
	#name : #FamixPWBAttribute,
	#superclass : #FamixPWBVariable,
	#instVars : [
		'#parentType => FMOne type: #FamixPWBmajorObject opposite: #attributes'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBAttribute class >> annotation [

	<FMClass: #Attribute super: #FamixPWBVariable>
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
FamixPWBAttribute >> parentType [
	"Relation named: #parentType type: #FamixPWBmajorObject opposite: #attributes"

	<generated>
	<container>
	^ parentType
]

{ #category : #accessing }
FamixPWBAttribute >> parentType: anObject [

	<generated>
	parentType := anObject
]

{ #category : #navigation }
FamixPWBAttribute >> parentTypeGroup [
	<generated>
	<navigation: 'ParentType'>
	^ MooseSpecializedGroup with: self parentType
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
