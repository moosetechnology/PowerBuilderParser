Trait {
	#name : #FamixPWBPBTNamed,
	#traits : 'FamixTNamedEntity + FamixTNamed',
	#classTraits : 'FamixTNamedEntity classTrait + FamixTNamed classTrait',
	#category : #'Famix-PowerBuilder-Entities-Traits'
}

{ #category : #meta }
FamixPWBPBTNamed classSide >> annotation [

	<FMClass: #PBTNamed super: #Object>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]
