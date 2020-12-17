Extension { #name : #FamixPWBmajorObject }

{ #category : #'*PowerBuilder-Importer' }
FamixPWBmajorObject >> createAccessTo: aFamixPWBAttribute writing: aBoolean [
	^ FamixPWBAccess new
		source: self;
		target: aFamixPWBAttribute;
		isWrite: aBoolean;
		mooseModel: self mooseModel;
		yourself
]

{ #category : #'*PowerBuilder-Importer' }
FamixPWBmajorObject >> createValueHolderNamed: aString [
	^ FamixPWBAttribute new
		parentType: self;
		mooseModel: self mooseModel;
		name: aString;
		yourself
]

{ #category : #'*PowerBuilder-Importer' }
FamixPWBmajorObject >> reachableEntities [
	^ self attributes , self methods
]
