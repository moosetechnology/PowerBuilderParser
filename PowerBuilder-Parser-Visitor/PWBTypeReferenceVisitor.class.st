"
A special visitor for type references
Will always return an ASTIdentifier

But may create types, for example in the case of an ASTBasicType

"
Class {
	#name : #PWBTypeReferenceVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #visiting }
PWBTypeReferenceVisitor >> visitPWBASTBasicType: aPWBASTBasicType [
	self model irStubForFamixClass: FamixPWBBasicType named: aPWBASTBasicType basicType.
	^PWBASTIdentifier new
		startPosition: aPWBASTBasicType startPosition ;
		stopPosition: aPWBASTBasicType stopPosition ;
		identifier: aPWBASTBasicType basicType ;
		yourself
]

{ #category : #visiting }
PWBTypeReferenceVisitor >> visitPWBASTCustomType: aPWBASTCustomType [
	^aPWBASTCustomType identifier
]

{ #category : #visiting }
PWBTypeReferenceVisitor >> visitPWBASTParametrizedType: aPWBASTParametrizedType [
	^PWBASTIdentifier new
		startPosition: aPWBASTParametrizedType startPosition ;
		stopPosition: aPWBASTParametrizedType stopPosition ;
		identifier: aPWBASTParametrizedType parametrizedType ;
		yourself
]

{ #category : #visiting }
PWBTypeReferenceVisitor >> visitPWBASTType: aPWBASTType [
	^self visit: aPWBASTType type.
]
