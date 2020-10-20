Extension { #name : #MooseEntity }

{ #category : #'*Famix-PowerBuilder-Entities' }
MooseEntity >> isPWBDead [
	^ self attributeAt: #isPWBDead ifAbsentPut: false
]

{ #category : #'*Famix-PowerBuilder-Entities' }
MooseEntity >> isPWBDead: aBoolean [
	^ self attributeAt: #isPWBDead put: aBoolean
]
