Extension { #name : #Object }

{ #category : #'*PowerBuilder-Parser-Core' }
Object >> parser [
	^ self asPParser
]

{ #category : #'*PowerBuilder-Parser-Core' }
Object >> token [
	^ self asPParser caseInsensitive
]
