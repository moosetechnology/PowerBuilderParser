Extension { #name : #MooseModel }

{ #category : #'*Famix-PowerBuilder-Entities' }
MooseModel >> allTags [
	^ self privateState
		attributeAt: #allTags
		ifAbsentPut: [ self defaultTags ]
]

{ #category : #'*Famix-PowerBuilder-Entities' }
MooseModel >> defaultTags [
	^ MooseGroup
		withAll:
			{(FamixPWBTag new
				name: 'Obsolette';
				mooseModel: self;
				color: Color red).
			(FamixPWBTag new
				name: 'Not sure';
				mooseModel: self;
				color: Color yellow).
			(FamixPWBTag new
				name: 'To be refactored';
				mooseModel: self;
				color: Color orange)}
]

{ #category : #'*Famix-PowerBuilder-Entities' }
MooseModel >> resetTags [
	self privateState attributeAt: #allTags put: self defaultTags
]

{ #category : #'*Famix-PowerBuilder-Entities' }
MooseModel >> tagNamed: aString [
	|tags|
	tags := self allTags.
	tags detect: [ :o | o name = aString ]
		ifNone: [ |tag|
			tag := FAMIXTag new.
			tag name: aString.
			tags add: tag.
			tag]
		
]
