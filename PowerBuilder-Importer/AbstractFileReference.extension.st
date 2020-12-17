Extension { #name : #AbstractFileReference }

{ #category : #'*PowerBuilder-Importer' }
AbstractFileReference >> visibleFiles [
	^ self files reject: [ :aFile | aFile basename first = $. ]
]
