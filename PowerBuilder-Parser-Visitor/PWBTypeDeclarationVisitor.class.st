Class {
	#name : #PWBTypeDeclarationVisitor,
	#superclass : #PWBImporterAbstractVisitor,
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #visiting }
PWBTypeDeclarationVisitor >> visitPWBASTTypeDeclaration: aPWBASTTypeDeclaration [
	| subType superType |
	self visit: aPWBASTTypeDeclaration type.
	subType := self solver toResolve last identifiers.
	self visit: aPWBASTTypeDeclaration fromClause.
	superType := self solver toResolve last identifiers.
	subType from: superType.
	self visit: aPWBASTTypeDeclaration eventType.
	self visit: aPWBASTTypeDeclaration withinClause.
	self visit: aPWBASTTypeDeclaration descriptor.
	self visit: aPWBASTTypeDeclaration attributes.

	nil "was: typeDeclarationType"
		keysAndValuesDo: [ :attString :type | 
			| var |
			self flag: 'should put the attributes in subType, not in CurrentEntity'.
			var := self currentEntity
				createValueHolderNamed: attString
				withType: FamixPWBInstanceVariable.
			var attributeType: type.
			type isResolvable
				ifTrue: [ type addTypedVariable: var ] ]
]
