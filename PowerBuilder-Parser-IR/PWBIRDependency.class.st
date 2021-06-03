"
An (abstract) Intermediary Representation of a dependency to a PWBIRNamedEntity
This is almost a ""marker class"" that does not define anything useful

Defined method are here to ensure polymorphism with PWBIRNamedEntity
"
Class {
	#name : #PWBIRDependency,
	#superclass : #Object,
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #testing }
PWBIRDependency >> isIREntity [
	^false
]

{ #category : #testing }
PWBIRDependency >> isResolverReachable [
	^false
]

{ #category : #accessing }
PWBIRDependency >> name [
	^nil
]

{ #category : #accessing }
PWBIRDependency >> owner [
	^nil
]
