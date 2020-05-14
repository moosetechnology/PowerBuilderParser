Extension { #name : #FamixPWBBehavioral }

{ #category : #'*PowerBuilder-Parser-Visitor' }
FamixPWBBehavioral >> createValueHolderNamed: aString withType: aFamixPWBVariableSubclass [
	^ aFamixPWBVariableSubclass new
		behavioral: self;
		mooseModel: self mooseModel;
		name: aString;
		yourself
]
