Class {
	#name : #PWBForwardParser,
	#superclass : #PWBCommonParser,
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #accessing }
PWBForwardParser >> start [
	forwardDeclaration ==> [ :production | production first ]
]
