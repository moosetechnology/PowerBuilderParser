Trait {
	#name : #FamixPWBTWithTags,
	#instVars : [
		'#tags => FMMany type: #FamixPWBTTag opposite: #entities'
	],
	#category : #'Famix-PowerBuilder-Entities-Traits'
}

{ #category : #meta }
FamixPWBTWithTags classSide >> annotation [

	<FMClass: #TWithTags super: #Object>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixPWBTWithTags >> addTag: anObject [
	<generated>
	^ self tags add: anObject
]

{ #category : #accessing }
FamixPWBTWithTags >> tags [
	"Relation named: #tags type: #FamixPWBTTag opposite: #entities"

	tags ifNil: [ tags := OrderedCollection new ].
	^ tags
]

{ #category : #accessing }
FamixPWBTWithTags >> tags: anObject [

	<generated>
	tags value: anObject
]
