Class {
	#name : #PWBAbstractAuxiliaryVisitor,
	#superclass : #PWBImporterAbstractVisitor,
	#instVars : [
		'parentVisitor'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #'instance creation' }
PWBAbstractAuxiliaryVisitor class >> newFrom: parentVisitor [
	^(self new)
		parentVisitor: parentVisitor ;
		yourself
]

{ #category : #accessing }
PWBAbstractAuxiliaryVisitor >> file [
	^parentVisitor file

]

{ #category : #initialization }
PWBAbstractAuxiliaryVisitor >> initialize [ 
	"auxiliary visitor are initialized differently than PWBImporterAbstractVisitor"
]

{ #category : #accessing }
PWBAbstractAuxiliaryVisitor >> model [
	^parentVisitor model

]

{ #category : #accessing }
PWBAbstractAuxiliaryVisitor >> parentVisitor [
	^ parentVisitor
]

{ #category : #accessing }
PWBAbstractAuxiliaryVisitor >> parentVisitor: anObject [
	parentVisitor := anObject
]

{ #category : #accessing }
PWBAbstractAuxiliaryVisitor >> solver [
	^parentVisitor solver
]
