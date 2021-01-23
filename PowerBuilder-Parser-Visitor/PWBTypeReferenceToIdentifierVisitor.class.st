"
A special visitor for type references
Will always return an ASTIdentifier to the calling visitor

But may create types, for example in the case of an ASTBasicType

"
Class {
	#name : #PWBTypeReferenceToIdentifierVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #visiting }
PWBTypeReferenceToIdentifierVisitor >> visitPWBASTBasicType: aPWBASTBasicType [
	"converts the basicType to a simple identifier returned to the calling visitor"
	self model irStubForFamixClass: FamixPWBBasicType named: aPWBASTBasicType basicType.
	^PWBASTIdentifier new
		startPosition: aPWBASTBasicType startPosition ;
		stopPosition: aPWBASTBasicType stopPosition ;
		identifier: aPWBASTBasicType basicType ;
		yourself
]

{ #category : #visiting }
PWBTypeReferenceToIdentifierVisitor >> visitPWBASTCustomType: aPWBASTCustomType [
	^aPWBASTCustomType identifier
]

{ #category : #visiting }
PWBTypeReferenceToIdentifierVisitor >> visitPWBASTParametrizedType: aPWBASTParametrizedType [
	"converts the parameterizedType to a simple identifier returned to the calling visitor"
	^PWBASTIdentifier new
		startPosition: aPWBASTParametrizedType startPosition ;
		stopPosition: aPWBASTParametrizedType stopPosition ;
		identifier: aPWBASTParametrizedType parametrizedType ;
		yourself
]

{ #category : #visiting }
PWBTypeReferenceToIdentifierVisitor >> visitPWBASTType: aPWBASTType [
	^self visit: aPWBASTType type.
]
