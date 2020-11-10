Extension { #name : #FamixPWBBehavioral }

{ #category : #'*FamixReplication' }
FamixPWBBehavioral >> clearReplicationCache [
	self propertyNamed: #replicas put: OrderedCollection new
]
