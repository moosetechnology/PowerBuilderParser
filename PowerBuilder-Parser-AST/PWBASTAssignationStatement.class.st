Class {
	#name : #PWBASTAssignationStatement,
	#superclass : #Object,
	#instVars : [
		'access',
		'assignation'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTAssignationStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAssignationStatement: self
]

{ #category : #accessing }
PWBASTAssignationStatement >> access [
	^ access
]

{ #category : #accessing }
PWBASTAssignationStatement >> access: anObject [
	access := anObject
]

{ #category : #accessing }
PWBASTAssignationStatement >> assignation [
	^ assignation
]

{ #category : #accessing }
PWBASTAssignationStatement >> assignation: anObject [
	assignation := anObject
]
