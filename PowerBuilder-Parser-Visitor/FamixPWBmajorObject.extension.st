Extension { #name : #FamixPWBmajorObject }

{ #category : #'*PowerBuilder-Parser-Visitor' }
FamixPWBmajorObject >> createAccessTo: aFamixPWBAttribute writing: aBoolean [
	^ FamixPWBAccess new
		source: self;
		target: aFamixPWBAttribute;
		isWrite: aBoolean;
		mooseModel: self mooseModel;
		yourself
]

{ #category : #'*PowerBuilder-Parser-Visitor' }
FamixPWBmajorObject >> createValueHolderNamed: aString [
	^ FamixPWBAttribute new
		parentType: self;
		mooseModel: self mooseModel;
		name: aString;
		yourself
]

{ #category : #'*PowerBuilder-Parser-Visitor' }
FamixPWBmajorObject >> reachableEntities [
	^ self attributes , self methods
]
