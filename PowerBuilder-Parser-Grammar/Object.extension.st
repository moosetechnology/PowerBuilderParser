Extension { #name : #Object }

{ #category : #'*PowerBuilder-Parser-Grammar' }
Object >> parser [
	^ self asPParser
]

{ #category : #'*PowerBuilder-Parser-Grammar' }
Object >> token [
	^ self asPParser caseInsensitive
]
