Extension { #name : #MooseEntity }

{ #category : #'*Famix-PowerBuilder-Entities' }
MooseEntity >> addAllTags: aCollection [
	self allTags do: [ :t | t unsafeRemoveEntity: self ].
	self privateState
		propertyAt: #allTags
		put: (OrderedCollection new: aCollection size).
	aCollection do: [ :t | self addTag: t ]
]

{ #category : #'*Famix-PowerBuilder-Entities' }
MooseEntity >> addTag: aTag [
	(self allTags includes: aTag)
		ifTrue: [ ^ self ].
	self allTags add: aTag.
	aTag unsafeAddEntity: self
]

{ #category : #'*Famix-PowerBuilder-Entities' }
MooseEntity >> allTags [
	^ self privateState
		propertyAt: #allTags
		ifAbsentPut: (OrderedCollection new: 2)
]

{ #category : #'*Famix-PowerBuilder-Entities' }
MooseEntity >> removeTag: aTag [
	(self allTags includes: aTag)
		ifFalse: [ ^ self ].
	self allTags remove: aTag.
	aTag unsafeRemoveEntity: self
]
