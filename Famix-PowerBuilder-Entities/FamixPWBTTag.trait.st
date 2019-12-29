Trait {
	#name : #FamixPWBTTag,
	#instVars : [
		'#name => FMProperty',
		'#color => FMProperty',
		'#entities => FMMany type: #FamixPWBTWithTag opposite: #tag'
	],
	#category : #'Famix-PowerBuilder-Entities-Traits'
}

{ #category : #meta }
FamixPWBTTag classSide >> annotation [

	<FMClass: #TTag super: #Object>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixPWBTTag >> addEntity: anObject [
	<generated>
	^ self entities add: anObject
]

{ #category : #accessing }
FamixPWBTTag >> color [

	<FMProperty: #color type: #String>
	<generated>
	^ color
]

{ #category : #accessing }
FamixPWBTTag >> color: anObject [
	<generated>
	color := anObject
]

{ #category : #accessing }
FamixPWBTTag >> entities [
	"Relation named: #entities type: #FamixPWBTWithTag opposite: #tag"

	<generated>
	<derived>
	^ entities
]

{ #category : #accessing }
FamixPWBTTag >> entities: anObject [

	<generated>
	entities value: anObject
]

{ #category : #accessing }
FamixPWBTTag >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
FamixPWBTTag >> name: anObject [
	<generated>
	name := anObject
]
