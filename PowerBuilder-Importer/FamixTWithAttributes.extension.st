Extension { #name : #FamixTWithAttributes }

{ #category : #'*PowerBuilder-Importer' }
FamixTWithAttributes >> createAccessTo: aFamixPWBAttribute writing: aBoolean [
	^ FamixPWBAccess new
		source: self;
		target: aFamixPWBAttribute;
		isWrite: aBoolean;
		mooseModel: self mooseModel;
		yourself
]

{ #category : #'*PowerBuilder-Importer' }
FamixTWithAttributes >> createStubValueHolderNamed: aString [ 
	^ self createValueHolderNamed: aString
]

{ #category : #'*PowerBuilder-Importer' }
FamixTWithAttributes >> createValueHolderNamed: aString [
  ^FamixPWBAttribute new
     parentType: self;
     mooseModel: self mooseModel;
     name: aString;
     yourself
]

{ #category : #'*PowerBuilder-Importer' }
FamixTWithAttributes >> createValueHolderNamed: aString withType: aFamixPWBAttributeSubclass [
	^ aFamixPWBAttributeSubclass new
		parentType: self;
		mooseModel: self mooseModel;
		name: aString;
		yourself
]

{ #category : #'*PowerBuilder-Importer' }
FamixTWithAttributes >> reachableEntities [
	^ self attributes
]
