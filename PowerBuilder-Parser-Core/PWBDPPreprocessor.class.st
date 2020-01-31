Class {
	#name : #PWBDPPreprocessor,
	#superclass : #PWBPreprocessor,
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #accessing }
PWBDPPreprocessor >> espeletteNewline [
	^ ($& parser , (Character space parser / Character tab parser) star
		, #newline parser)
		==> [ :p | String streamContents: [ :stream | stream cr ] ]
]
