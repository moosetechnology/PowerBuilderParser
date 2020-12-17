Extension { #name : #FamixPWBBehavioral }

{ #category : #'*PowerBuilder-Importer' }
FamixPWBBehavioral >> createValueHolderNamed: aString withType: aFamixPWBVariableSubclass [
	^ aFamixPWBVariableSubclass new
		behavioral: self;
		mooseModel: self mooseModel;
		name: aString;
		yourself
]
