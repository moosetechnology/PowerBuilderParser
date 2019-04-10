Extension { #name : #FamixPWBmajorObject }

{ #category : #'*PowerBuilder-Parser-Visitor' }
FamixPWBmajorObject >> createAccessTo: aFamixPWBAttribute writing: aBoolean [
	^ FamixPWBAccess new
		from: self;
		to: aFamixPWBAttribute;
		isWrite: aBoolean;
		mooseModel: self mooseModel;
		yourself
]

{ #category : #'*PowerBuilder-Parser-Visitor' }
FamixPWBmajorObject >> reachableEntities [
	^ self attributes
]
