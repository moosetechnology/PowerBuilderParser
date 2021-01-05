Class {
	#name : #PWBIRAliasEntity,
	#superclass : #PWBIRComplexEntity,
	#instVars : [
		'aliasedEntity'
	],
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #accessing }
PWBIRAliasEntity >> aliasedEntity [
	^ aliasedEntity
]

{ #category : #accessing }
PWBIRAliasEntity >> aliasedEntity: anObject [
	aliasedEntity := anObject
]

{ #category : #accessing }
PWBIRAliasEntity >> reachableEntities [
	^super reachableEntities
		union: (self aliasedEntity 
			ifNil: [ #() ]
			ifNotNil: [ aliasedEntity reachableEntities ])
]
