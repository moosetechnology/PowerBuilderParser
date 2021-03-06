Class {
	#name : #FamixPWBFunction,
	#superclass : #FamixPWBBehavioral,
	#traits : 'FamixPWBPBTNamed - {#mooseNameOn:} + FamixTHasSignature + FamixTInvocable + FamixTMethod + FamixTWithParameters',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixTHasSignature classTrait + FamixTInvocable classTrait + FamixTMethod classTrait + FamixTWithParameters classTrait',
	#instVars : [
		'#returnType => FMProperty'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBFunction class >> annotation [

	<FMClass: #Function super: #FamixPWBBehavioral>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixPWBFunction >> isFunction [
	^ self isGlobal not
]

{ #category : #testing }
FamixPWBFunction >> isGlobal [
	^ self accessModifier asLowercase = 'global'
]

{ #category : #accessing }
FamixPWBFunction >> mooseNameOn: stream [
	self parentType
		ifNotNil: [ :parent | 
			parent mooseNameOn: stream.
			stream nextPut: $. ].
	self name ifNotNil: [ :aName | stream nextPutAll: aName ]
]

{ #category : #accessing }
FamixPWBFunction >> parameters [
	"Relation named: #parameters type: #FamixPWBParameter opposite: #behavioral"

	
	^ parameters
]

{ #category : #accessing }
FamixPWBFunction >> returnType [

	<FMProperty: #returnType type: #Object>
	<generated>
	^ returnType
]

{ #category : #accessing }
FamixPWBFunction >> returnType: anObject [
	<generated>
	returnType := anObject
]

{ #category : #accessing }
FamixPWBFunction >> updateType: anEntity [
	self returnType: anEntity.
	self returns do: #updateType
]
