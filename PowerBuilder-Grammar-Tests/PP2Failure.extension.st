Extension { #name : #PP2Failure }

{ #category : #'*PowerBuilder-Grammar-Tests' }
PP2Failure >> debugObject [
	^ DebugObject new
		failure: self;
		unparsedString: (context copyFrom: (self position max: 1) to: context size);
		progress: self position / context size;
		yourself
]
