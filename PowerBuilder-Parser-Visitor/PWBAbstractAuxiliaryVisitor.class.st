"
This is an abstract superclass for all AuxiliaryVisitors: small specialized visitors like a visitor to handle variableDeclarations.

Auxiliary visitors are 'spawned' by a parentVisitor during the visit of the AST.
they share common properties like the name of the file from which the AST was created, the ReferenceSolver they use, the model they populate ...
AuxiliaryVisitors know their parent visitor to ask it all these informations
"
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
