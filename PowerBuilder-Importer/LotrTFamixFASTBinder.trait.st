Trait {
	#name : #LotrTFamixFASTBinder,
	#instVars : [
		'famixEntity',
		'fastEntities',
		'fastToFamix',
		'famixToFast'
	],
	#category : #'PowerBuilder-Importer-Importers'
}

{ #category : #api }
LotrTFamixFASTBinder >> bind [
	fastToFamix := Dictionary new: fastEntities size.
	famixToFast := Dictionary new: fastEntities size.
	
	fastEntities do: [ :each | each accept: self ]
]

{ #category : #private }
LotrTFamixFASTBinder >> bindFast: aFastEntity toFamix: aFamixEntity [
	fastToFamix at: aFastEntity put: aFamixEntity.
	famixToFast at: aFamixEntity put: aFastEntity 
]

{ #category : #private }
LotrTFamixFASTBinder >> chooseCandidate: aCollection for: fastEntity [
	^((aCollection collect: [ :famixCandidate |
		famixCandidate -> (self distanceOf: famixCandidate to: fastEntity)	])
		sorted: [ :candidate1 :candidate2 | candidate1 value < candidate2 value ])
		first key
]

{ #category : #private }
LotrTFamixFASTBinder >> distanceOf: famixCandidate to: fastElement [
	^LotrDistance
		deltaStart: ((self localizedPos: fastElement startPos) - famixCandidate sourceAnchor startPos)
		deltaEnd: ((self localizedPos: fastElement endPos) - famixCandidate sourceAnchor endPos)
]

{ #category : #api }
LotrTFamixFASTBinder >> famixBinding: aFastEntity [
	^fastToFamix at: aFastEntity ifAbsent: [ nil ]
]

{ #category : #accessing }
LotrTFamixFASTBinder >> famixEntity [
	^ famixEntity
]

{ #category : #accessing }
LotrTFamixFASTBinder >> famixEntity: anObject [
	famixEntity := anObject
]

{ #category : #api }
LotrTFamixFASTBinder >> fastBinding: aFamixEntity [
	^famixToFast at: aFamixEntity ifAbsent: [ nil ]
]

{ #category : #accessing }
LotrTFamixFASTBinder >> fastEntities [
	^ fastEntities
]

{ #category : #accessing }
LotrTFamixFASTBinder >> fastEntities: aCollection [
	fastEntities := aCollection.
]

{ #category : #private }
LotrTFamixFASTBinder >> localizedPos: aPosition [
	^aPosition + self famixEntity sourceAnchor startPos
]
