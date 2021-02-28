Class {
	#name : #FamixPWBmajorObject,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTNamedEntity + FamixTWithAccesses + FamixTWithAttributes + FamixTWithFunctions + FamixTWithMethods + FamixTWithReferences',
	#classTraits : 'FamixTNamedEntity classTrait + FamixTWithAccesses classTrait + FamixTWithAttributes classTrait + FamixTWithFunctions classTrait + FamixTWithMethods classTrait + FamixTWithReferences classTrait',
	#instVars : [
		'#content',
		'#methods => FMMany type: #FamixPWBRoutine opposite: #parentType'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBmajorObject class >> annotation [

	<FMClass: #majorObject super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixPWBmajorObject >> addMethod: anObject [
	<generated>
	^ self methods add: anObject
]

{ #category : #accessing }
FamixPWBmajorObject >> allIncomingInvocationsSenders [
	| scan scanTop |
	scan := OrderedCollection withAll: self incomingInvocationsSenders.
	scanTop := 1.
	[ scanTop > scan size ]
		whileFalse: [ scan
				addAll:
					((scan at: scanTop) incomingInvocationsSenders
						reject: [ :entity | scan includes: entity ]) asSet.
			scanTop := scanTop + 1 ].
	^ scan asSet
]

{ #category : #api }
FamixPWBmajorObject >> attributeAccess: attributeName [
	^ self mooseModel allMethods
		select: [ :method | 
			(method accesses collectAsSet: [ :acces | acces variable ])
				anySatisfy: [ :var | var name endsWith: attributeName ] ]
]

{ #category : #accessing }
FamixPWBmajorObject >> deadMethods [
	^ (self methods select: #isPWBDead) asSet asMooseGroup
]

{ #category : #accessing }
FamixPWBmajorObject >> incomingInvocationsSenders [
	^ self
		clean:
			(((self methods reject: #isPredefinedMethod)
				flatCollectAsSet: #incomingInvocationsSenders)
				collectAsSet: #parentType)
]

{ #category : #'as yet unclassified' }
FamixPWBmajorObject >> incomingInvocationsSenders: anInteger [
	| totalResult levelResult level scan |
	totalResult := self incomingInvocationsSenders.
	levelResult := totalResult.
	level := 1.
	scan := 0.
	[ level < anInteger and: [ scan < totalResult size ] ]
		whileTrue: [ level := level + 1.
			scan := totalResult size.
			levelResult := levelResult flatCollect: #incomingInvocationsSenders.
			totalResult addAll: levelResult ].
	^ totalResult asOrderedCollection
]

{ #category : #'as yet unclassified' }
FamixPWBmajorObject >> incomingInvocationsSenders: anInteger exceptFromMethodsOfType: aCollection [
	| totalResult levelResult level scan |
	totalResult := self
		incomingInvocationsSendersExceptFromMethodsOfType: aCollection.
	levelResult := totalResult.
	level := 1.
	scan := 0.
	[ level < anInteger and: [ scan < totalResult size ] ]
		whileTrue: [ level := level + 1.
			scan := totalResult size.
			totalResult := levelResult
				flatCollectAsSet:
					[ :each | each incomingInvocationsSendersExceptFromMethodsOfType: aCollection ].
			totalResult addAll: levelResult ].
	^ totalResult asSet
]

{ #category : #api }
FamixPWBmajorObject >> incomingInvocationsSendersExceptFromMethodsOfType: aCollection [
	^ self
		clean:
			((((self methods
				reject:
					[ :each | each isPredefinedMethod or: [ aCollection includes: each class ] ])
				flatCollectAsSet: #incomingInvocationsSenders)
				reject: [ :aMethod | aCollection includes: aMethod class ])
				collectAsSet: #parentType)
]

{ #category : #'as yet unclassified' }
FamixPWBmajorObject >> incomingInvocationsSendersWith: aCollection [
	| result |
	result := self incomingInvocationsSenders.
	result addAll: (aCollection flatCollect: #incomingInvocationsSenders).
	^ result asOrderedCollection
]

{ #category : #query }
FamixPWBmajorObject >> incomingInvocationsTypes [
	^ self methodsIncomingInvocationsSenders collectAsSet: #class
]

{ #category : #'public-testing' }
FamixPWBmajorObject >> isGenerallyUsed: obj [
	^ {'uo_datawindow' . 'uo_traitement' . 'uo_parametres' . 'uo_dw_detail'.
	'uo_liste_detail_en_partage'} includes: obj name
]

{ #category : #testing }
FamixPWBmajorObject >> isPWBClass [
	^ true
]

{ #category : #accessing }
FamixPWBmajorObject >> methods [
	"Relation named: #methods type: #FamixPWBRoutine opposite: #parentType"

	<generated>
	<derived>
	^ methods
]

{ #category : #accessing }
FamixPWBmajorObject >> methods: anObject [

	<generated>
	methods value: anObject
]

{ #category : #query }
FamixPWBmajorObject >> methodsIncomingInvocationsSenders [
	^ (self methods reject: #isPredefinedMethod)
		flatCollectAsSet: #incomingInvocationsSenders
]

{ #category : #'as yet unclassified' }
FamixPWBmajorObject >> methodsInvocationsSendersTypes [
	^ self methodsIncomingInvocationsSenders collectAsSet: #class
]

{ #category : #'as yet unclassified' }
FamixPWBmajorObject >> numberOfIncomingInvocations [
	^ self content
		inject: 0
		into: [ :sum :each | sum + each numberOfIncomingInvocations ]
]

{ #category : #accessing }
FamixPWBmajorObject >> tagNamed: aString [
	^ self allTags detect: [ :tag | tag name = aString ]
]
