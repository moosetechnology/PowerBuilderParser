Extension { #name : #FamixPWBTrigger }

{ #category : #'*PowerBuilder-Parser-Visitor' }
FamixPWBTrigger >> createValueHolderNamed: aString withType: aFamixPWBAttributeSubclass [
	^ super
		createValueHolderNamed: aString
		withType: aFamixPWBAttributeSubclass
]
