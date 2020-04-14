Extension { #name : #MooseEntity }

{ #category : #'*Famix-PowerBuilder-Entities' }
MooseEntity >> isPWBDead [
	^ self privateState attributeAt: #isPWBDead ifAbsentPut: false
]

{ #category : #'*Famix-PowerBuilder-Entities' }
MooseEntity >> isPWBDead: aBoolean [
	^ self privateState attributeAt: #isPWBDead put: aBoolean
]
