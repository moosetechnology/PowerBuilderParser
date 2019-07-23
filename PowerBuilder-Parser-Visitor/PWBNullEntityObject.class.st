Class {
	#name : #PWBNullEntityObject,
	#superclass : #Object,
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #'null pattern' }
PWBNullEntityObject >> name: aString [ 
	"null pattern"
]

{ #category : #solver }
PWBNullEntityObject >> reachableEntities [
	^ #()
]
