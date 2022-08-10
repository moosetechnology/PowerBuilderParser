Class {
	#name : #FamixPWBEntity,
	#superclass : #MooseEntity,
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixPWBEntity class >> metamodel [

	<generated>
	^ FamixPWBModel metamodel
]

{ #category : #converting }
FamixPWBEntity >> asSREntityScope [
	^SREntityScope new
		entity: self ;
		yourself
]

{ #category : #'as yet unclassified' }
FamixPWBEntity >> duplicationRate [
	<MSEProperty: #duplicationRate type: #Number>
	<MSEComment: 'Duplication Rate.'>
	<derived>
	^ self replicas
		ifEmpty: [ 0 ]
		ifNotEmpty: [ :cloneLocations | 
			| accumulator usefulCloneLocations |
			accumulator := 0.

			"We remove the localisations already included in other localisations because this add noise."
			usefulCloneLocations := cloneLocations
				inject: OrderedCollection new
				into: [ :res :cl | 
					res
						detect: [ :loc | loc isSupersetOfReplica: cl ]
						ifNone: [ res add: cl ].
					res ].

			"We sort the fragments by startline to get the contiguous next to each other."
			(usefulCloneLocations sort: #startLine ascending) allButLast
				do: [ :aLocation | 
					accumulator := accumulator
						+
							((aLocation isContiguousWith: (usefulCloneLocations after: aLocation))
								ifTrue: [ (usefulCloneLocations after: aLocation) startLine
										- aLocation startLine ]
								ifFalse: [ aLocation length ]) ].
			(accumulator + usefulCloneLocations anyOne length) asString , '/'
				, self sourceText lineCount asString ]
]

{ #category : #'as yet unclassified' }
FamixPWBEntity >> hasMatchingType: aClass [
	^self isKindOf: aClass
]

{ #category : #'as yet unclassified' }
FamixPWBEntity >> increaseCyclomaticComplexity [
	self cyclomaticComplexity: self cyclomaticComplexity + 1 
]

{ #category : #testing }
FamixPWBEntity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isBehavioural [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isEvent [
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isPWBClass [
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isParameter [
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isResolvable [
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isSubRoutine [
	^ false
]

{ #category : #testing }
FamixPWBEntity >> isType [

	<generated>
	^ false
]
