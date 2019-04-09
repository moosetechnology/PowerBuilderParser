Extension { #name : #AbstractFileReference }

{ #category : #'*PowerBuilder-Parser-Visitor' }
AbstractFileReference >> visibleFiles [
	^ self files reject: [ :aFile | aFile basename first = $. ]
]
