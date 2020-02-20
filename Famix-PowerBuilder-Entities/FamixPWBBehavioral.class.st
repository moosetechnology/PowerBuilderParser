Class {
	#name : #FamixPWBBehavioral,
	#superclass : #MooseEntity,
	#traits : 'FamixPWBTWithTags + FamixTWithAccesses + FamixTWithInvocations + FamixTWithReferences + FamixTWithSourceAnchor',
	#classTraits : 'FamixPWBTWithTags classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FamixTWithReferences classTrait + FamixTWithSourceAnchor classTrait',
	#instVars : [
		'#content',
		'#cyclomaticComplexity',
		'#deadArguments',
		'#deadLocalVariables',
		'#incomingInvocationSenders',
		'#variables => FMMany type: #FamixPWBVariable opposite: #behavioral'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBBehavioral class >> annotation [

	<FMClass: #Behavioral super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixPWBBehavioral class >> metamodel [

	<generated>
	^ FamixPWBModel metamodel
]

{ #category : #adding }
FamixPWBBehavioral >> addVariable: anObject [
	<generated>
	^ self variables add: anObject
]

{ #category : #'visitor-double dispatching' }
FamixPWBBehavioral >> createAccessTo: aFamixPWBAccessible writing: aBoolean [ 
	^ aFamixPWBAccessible accessAssociation new
		from: self;
		to: aFamixPWBAccessible;
		isWrite: aBoolean;
		mooseModel: self mooseModel;
		yourself
]

{ #category : #'as yet unclassified' }
FamixPWBBehavioral >> createStubValueHolderNamed: aString [ 
	^ self createValueHolderNamed: aString
]

{ #category : #'as yet unclassified' }
FamixPWBBehavioral >> createValueHolderNamed: aString [ 
	^ FamixPWBVariable new
		behavioral: self;
		mooseModel: self mooseModel;
		name: aString;
		yourself
]

{ #category : #accessing }
FamixPWBBehavioral >> cyclomaticComplexity [

	<FMProperty: #cyclomaticComplexity type: #Number>
	<generated>
	^ cyclomaticComplexity
]

{ #category : #accessing }
FamixPWBBehavioral >> cyclomaticComplexity: anObject [
	<generated>
	cyclomaticComplexity := anObject
]

{ #category : #'as yet unclassified' }
FamixPWBBehavioral >> increaseCyclomaticComplexity [
	self cyclomaticComplexity: self cyclomaticComplexity + 1
]

{ #category : #testing }
FamixPWBBehavioral >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isType [

	<generated>
	^ false
]

{ #category : #accessing }
FamixPWBBehavioral >> reachableEntities [
	^ self variables
]

{ #category : #accessing }
FamixPWBBehavioral >> variables [
	"Relation named: #variables type: #FamixPWBVariable opposite: #behavioral"

	<generated>
	<derived>
	^ variables
]

{ #category : #accessing }
FamixPWBBehavioral >> variables: anObject [

	<generated>
	variables value: anObject
]

{ #category : #navigation }
FamixPWBBehavioral >> variablesGroup [
	<generated>
	<navigation: 'Variables'>
	^ MooseGroup withAll: self variables asSet
]
