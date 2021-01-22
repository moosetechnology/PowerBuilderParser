"
An (abstract) Intermediary Representation of a dependency to a PWBIRNamedEntity
This is almost a ""marker class"" that does not define anything useful

Defined method are here to ensure polymorphism with PWBIRNamedEntity
"
Class {
	#name : #PWBIRDependencyEntity,
	#superclass : #Object,
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #testing }
PWBIRDependencyEntity >> isResolverReachable [
	^false
]

{ #category : #accessing }
PWBIRDependencyEntity >> name [
	^nil
]

{ #category : #accessing }
PWBIRDependencyEntity >> owner [
	^nil
]
