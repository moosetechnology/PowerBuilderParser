Class {
	#name : #FamixPWBParameter,
	#superclass : #FamixPWBVariable,
	#instVars : [
		'#parentBehaviouralEntity => FMOne type: #FamixPWBRoutine opposite: #parameters'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBParameter class >> annotation [

	<FMClass: #Parameter super: #FamixPWBVariable>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixPWBParameter >> basicTypes [
	^ PWBCommonGrammar new basicTypeArray
]

{ #category : #'as yet unclassified' }
FamixPWBParameter >> beMemberOfBehavioural: aFamixBehavioural [
	self parentBehaviouralEntity: aFamixBehavioural
]

{ #category : #testing }
FamixPWBParameter >> isBasic [
	^ self parameterType isBasic
]

{ #category : #testing }
FamixPWBParameter >> isPWBDataWindow [
	^ self parameterType isPWBDataWindow
]

{ #category : #testing }
FamixPWBParameter >> isReadOnly [
	^ ({'readOnly' . 'ref'}
		anySatisfy: [ :each | each = parameterOption ]) or: [ self isBasic ]
]

{ #category : #accessing }
FamixPWBParameter >> parentBehaviouralEntity [
	"Relation named: #parentBehaviouralEntity type: #FamixPWBRoutine opposite: #parameters"

	<generated>
	<container>
	^ parentBehaviouralEntity
]

{ #category : #accessing }
FamixPWBParameter >> parentBehaviouralEntity: anObject [

	<generated>
	parentBehaviouralEntity := anObject
]

{ #category : #navigation }
FamixPWBParameter >> parentBehaviouralEntityGroup [
	<generated>
	<navigation: 'ParentBehaviouralEntity'>
	^ MooseSpecializedGroup with: self parentBehaviouralEntity
]

{ #category : #accessing }
FamixPWBParameter >> updateType: aFamixPWBCustomType [
	self parameterType: aFamixPWBCustomType
]
