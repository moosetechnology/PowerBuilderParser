Trait {
	#name : #FamixPWBAbstractType,
	#traits : 'FamixPWBPBTNamed - {#mooseNameOn:} + FamixPWBTWithTags + FamixTReferenceable + FamixTType',
	#classTraits : 'FamixPWBPBTNamed classTrait + FamixPWBTWithTags classTrait + FamixTReferenceable classTrait + FamixTType classTrait',
	#category : #'Famix-PowerBuilder-Entities-Traits'
}

{ #category : #meta }
FamixPWBAbstractType classSide >> annotation [

	<FMClass: #AbstractType super: #Object>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]
