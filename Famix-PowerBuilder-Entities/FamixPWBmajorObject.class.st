Class {
	#name : #FamixPWBmajorObject,
	#superclass : #MooseEntity,
	#traits : 'FamixPWBPBTWithMethods - {#numberOfLinesOfCode} + FamixTNamedEntity + FamixTWithAccesses + FamixTWithAttributes + FamixTWithFunctions + FamixTWithReferences + FamixTWithSourceAnchor + FamixTNamed',
	#classTraits : 'FamixPWBPBTWithMethods classTrait + FamixTNamedEntity classTrait + FamixTWithAccesses classTrait + FamixTWithAttributes classTrait + FamixTWithFunctions classTrait + FamixTWithReferences classTrait + FamixTWithSourceAnchor classTrait + FamixTNamed classTrait',
	#instVars : [
		'#content',
		'#cyclomaticComplexity => FMProperty',
		'#library => FMOne type: #FamixPWBLibrary opposite: #userObjects',
		'#ticketAssociations => FMMany type: #FamixPWBTicketAssociation opposite: #majorObject'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBmajorObject class >> annotation [

	<FMClass: #majorObject super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixPWBmajorObject class >> metamodel [

	<generated>
	^ FamixPWBModel metamodel
]

{ #category : #adding }
FamixPWBmajorObject >> addTicketAssociation: anObject [
	<generated>
	^ self ticketAssociations add: anObject
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
						reject: [ :entity | scan includes: entity ]).
			scanTop := scanTop + 1 ].
	^ scan
]

{ #category : #accessing }
FamixPWBmajorObject >> cyclomaticComplexity [

	<FMProperty: #cyclomaticComplexity type: #Number>
	<generated>
	^ cyclomaticComplexity
]

{ #category : #accessing }
FamixPWBmajorObject >> cyclomaticComplexity: anObject [
	<generated>
	cyclomaticComplexity := anObject
]

{ #category : #accessing }
FamixPWBmajorObject >> incomingInvocationsSenders [
	^ self
		clean:
			((self methods flatCollectAsSet: #incomingInvocationsSenders)
				collectAsSet: #parentType)
]

{ #category : #testing }
FamixPWBmajorObject >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBmajorObject >> isType [

	<generated>
	^ false
]

{ #category : #accessing }
FamixPWBmajorObject >> library [
	"Relation named: #library type: #FamixPWBLibrary opposite: #userObjects"

	<generated>
	<container>
	^ library
]

{ #category : #accessing }
FamixPWBmajorObject >> library: anObject [

	<generated>
	library := anObject
]

{ #category : #navigation }
FamixPWBmajorObject >> libraryGroup [
	<generated>
	<navigation: 'Library'>
	^ MooseGroup with: self library
]

{ #category : #accessing }
FamixPWBmajorObject >> ticketAssociations [
	"Relation named: #ticketAssociations type: #FamixPWBTicketAssociation opposite: #majorObject"

	<generated>
	<derived>
	^ ticketAssociations
]

{ #category : #accessing }
FamixPWBmajorObject >> ticketAssociations: anObject [

	<generated>
	ticketAssociations value: anObject
]
