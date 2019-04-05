Extension { #name : #FamixTWithAttributes }

{ #category : #'*PowerBuilder-Parser-Visitor' }
FamixTWithAttributes >> createStubValueHolderNamed: aString [ 
	^ self createValueHolderNamed: aString
]

{ #category : #'*PowerBuilder-Parser-Visitor' }
FamixTWithAttributes >> createValueHolderNamed: aString [ 
	^ FamixPWBAttribute new
		belongsTo: self;
		mooseModel: self mooseModel;
		name: aString;
		yourself
]
