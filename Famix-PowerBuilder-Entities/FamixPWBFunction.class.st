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
	^ true
]

{ #category : #printing }
FamixPWBFunction >> mooseNameOn: stream [
	self parentType
		ifNotNil: [ :parent | 
			parent mooseNameOn: stream.
			stream nextPut: $. ].
	self signature
		ifNotNil: [ :aSignature | aSignature mooseNameOn: stream ]
		ifNil: [ self name ifNotNil: [ :aName | stream nextPutAll: aName ] ]
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
