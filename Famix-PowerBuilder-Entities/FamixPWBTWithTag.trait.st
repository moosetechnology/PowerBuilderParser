Trait {
	#name : #FamixPWBTWithTag,
	#instVars : [
		'#tag => FMOne type: #FamixPWBTTag opposite: #entities'
	],
	#category : #'Famix-PowerBuilder-Entities-Traits'
}

{ #category : #meta }
FamixPWBTWithTag classSide >> annotation [

	<FMClass: #TWithTag super: #Object>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixPWBTWithTag >> tag [
	"Relation named: #tag type: #FamixPWBTTag opposite: #entities"

	<generated>
	^ tag
]

{ #category : #accessing }
FamixPWBTWithTag >> tag: anObject [

	<generated>
	tag := anObject
]
