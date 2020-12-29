Class {
	#name : #PWBTypeDeclarationVisitor,
	#superclass : #PWBImporterAbstractVisitor,
	#instVars : [
		'typeDeclarationType'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #visiting }
PWBTypeDeclarationVisitor >> visitPWBASTCustomType: aPWBASTCustomType [
	| typeToResolve |
	typeToResolve := (self
		resolvable:
		(SRTypeIdentifierWithNode
		identifier: (self visit: aPWBASTCustomType identifier)
		expectedKind:
			{FamixPWBCustomType.
			FamixPWBGlobalFunction.
			FamixPWBStructure.
			FamixPWBQuery.
			FamixPWBUserObject}
		node: aPWBASTCustomType identifier))
		foundAction: [ :identifier :currentEntity | 
			self preprocessedFile: currentEntity sourceAnchor fileReference.
			(self create: FamixPWBReference from: identifier node)
				source: currentEntity;
				target: identifier entity ];
		notFoundReplacementEntity: [ :identifier :currentEntity | 
			self
				ensureFamixEntity: FamixPWBCustomType
				named: (self visit: aPWBASTCustomType identifier) ].
	^ self resolve: typeToResolve
]

{ #category : #visiting }
PWBTypeDeclarationVisitor >> visitPWBASTTypeDeclaration: aPWBASTTypeDeclaration [

	typeDeclarationType := Dictionary new.
	self visit: aPWBASTTypeDeclaration type.
	self visit: aPWBASTTypeDeclaration fromClause.
	self visit: aPWBASTTypeDeclaration eventType.
	self visit: aPWBASTTypeDeclaration withinClause.
	self visit: aPWBASTTypeDeclaration descriptor.
	self visit: aPWBASTTypeDeclaration attributes.
	typeDeclarationType
		keysAndValuesDo: [ :attString :type | 
			| var |
			var := self currentEntity
				createValueHolderNamed: attString
				withType: FamixPWBInstanceVariable.
			var attributeType: type.
			type isResolvable
				ifTrue: [ type addTypedVariable: var ] ]
]
