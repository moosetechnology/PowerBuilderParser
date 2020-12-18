Class {
	#name : #PWBFamixFASTBinder,
	#superclass : #PWBFASTAbstractVisitor,
	#traits : 'LotrTFamixFASTBinder',
	#classTraits : 'LotrTFamixFASTBinder classTrait',
	#category : #'PowerBuilder-Importer-Importers'
}

{ #category : #visiting }
PWBFamixFASTBinder >> visitAccess: aFASTAccess [
	| famixCandidate |
	famixCandidate := self chooseCandidate: famixEntity accesses for: aFASTAccess.
	(famixCandidate variable name = aFASTAccess identifier name)
		ifTrue: [ self bindFast: aFASTAccess toFamix: famixCandidate ]
]

{ #category : #visiting }
PWBFamixFASTBinder >> visitFunctionInvocation: aFASTFunctionInvocation [
	| famixCandidate |
	famixCandidate := self
		chooseCandidate: famixEntity outgoingInvocations
		for: aFASTFunctionInvocation.

	(famixCandidate candidates anyOne name = aFASTFunctionInvocation identifier name)
		ifTrue: [ self bindFast: aFASTFunctionInvocation toFamix: famixCandidate ].

	self visit: aFASTFunctionInvocation arguments
]
