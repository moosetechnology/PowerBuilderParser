Trait {
	#name : #FamixPWBAbstractType,
	#traits : 'FamixTNamed + FamixTType + FamixTReferenceable + FamixTWithSuperInheritances + FamixTWithSubInheritances',
	#classTraits : 'FamixTNamed classTrait + FamixTType classTrait + FamixTReferenceable classTrait + FamixTWithSuperInheritances classTrait + FamixTWithSubInheritances classTrait',
	#category : #'Famix-PowerBuilder-Entities-Traits'
}

{ #category : #meta }
FamixPWBAbstractType classSide >> annotation [

	<MSEClass: #AbstractType super: #Trait>
	<generated>
	<package: #'Famix-PowerBuilder-Entities'>
	^self
]

{ #category : #generator }
FamixPWBAbstractType classSide >> generatedSlotNames [
	<generated>
	'FamixPWBAbstractType class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBAbstractType classSide >> generatedTraitNames [
	<generated>
	^ #(FamixTNamed FamixTType FamixTReferenceable FamixTWithSuperInheritances FamixTWithSubInheritances)
]
