Trait {
	#name : #FamixPWBAbstractType,
	#traits : 'FamixPWBPBTNamed - {#mooseNameOn:} + FamixPWBTWithSubInheritances + FamixPWBTWithSuperInheritances + FamixPWBTWithTags + FamixTReferenceable + FamixTType',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixPWBTWithSubInheritances classTrait + FamixPWBTWithSuperInheritances classTrait + FamixPWBTWithTags classTrait + FamixTReferenceable classTrait + FamixTType classTrait',
	#category : #'Famix-PowerBuilder-Entities-Traits'
}

{ #category : #meta }
FamixPWBAbstractType classSide >> annotation [

	<FMClass: #AbstractType super: #Object>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]
