Class {
	#name : #KeepComment,
	#superclass : #PWBPreprocessor,
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #accessing }
KeepComment >> comment [
	^ (multiLineComment / singleLineComment) flatten ==> [ :p | p ]
]
