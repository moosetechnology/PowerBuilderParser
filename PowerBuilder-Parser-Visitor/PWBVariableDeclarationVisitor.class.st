"
A specialized visitor to handle variable declarations
This includes FamixPWBInstanceVariable, FamixPWBSharedVariable, FamixPWBParameter

Instance variable famixClass controls what kind of entity to create, default is FamixPWBInstanceVariable
"
Class {
	#name : #PWBVariableDeclarationVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#instVars : [
		'defaultFamixClass'
	],
	#category : #'PowerBuilder-Parser-Visitor-visitors'
}

{ #category : #helpers }
PWBVariableDeclarationVisitor >> declaredType: typeIdentifier forIR: irTypedEntity [
	| resolvable |
	resolvable := self
		resolvable:
			(SRIdentifierToIR
				name: typeIdentifier identifier
				expectedKind: (PWBIRType defaultFamixClasses: typeIdentifier identifier)
				node: typeIdentifier).
	resolvable
		foundAction:
				[ :identifier :currentEntity | irTypedEntity declaredType: identifier entity ];
		ifNotFoundCreateStubInModel: self model.
	self resolve: resolvable
]

{ #category : #accessing }
PWBVariableDeclarationVisitor >> defaultFamixClass [
	^ defaultFamixClass
]

{ #category : #accessing }
PWBVariableDeclarationVisitor >> defaultFamixClass: anObject [
	defaultFamixClass := anObject
]

{ #category : #initialization }
PWBVariableDeclarationVisitor >> initialize [
	super initialize.
	defaultFamixClass := FamixPWBInstanceVariable
]

{ #category : #visiting }
PWBVariableDeclarationVisitor >> visitPWBASTArgument: aPWBASTArgument [
	| var |
	var := self model
		ensureIRForFamixClass: defaultFamixClass
		named: (self visit: aPWBASTArgument identifier)
		owner: self currentEntity.
	var setSourceAnchorFrom: aPWBASTArgument file: self file.
	self
		declaredType: (self auxiliaryVisitor: PWBTypeReferenceToIdentifierVisitor visit: aPWBASTArgument type)
		forIR: var.
]

{ #category : #visiting }
PWBVariableDeclarationVisitor >> visitPWBASTArguments: aPWBASTArguments [
	self defaultFamixClass: FamixPWBParameter.
	^self visitAll: aPWBASTArguments arguments
]

{ #category : #visiting }
PWBVariableDeclarationVisitor >> visitPWBASTGlobalVariableDeclaration: aPWBASTGlobalVariableDeclaration [
	"Single line global variable declaration (only o1 variable)"
	| typeIdentifier var |
	typeIdentifier := self auxiliaryVisitor: PWBTypeReferenceToIdentifierVisitor visit: aPWBASTGlobalVariableDeclaration type type.
	var := self model
		ensureIRForFamixClass: FamixPWBGlobalVariable
		named: aPWBASTGlobalVariableDeclaration variable identifier identifier
		owner: self currentEntity.
	var setSourceAnchorFrom: aPWBASTGlobalVariableDeclaration file: self file.
		self declaredType: typeIdentifier forIR: var
]

{ #category : #visiting }
PWBVariableDeclarationVisitor >> visitPWBASTGlobalVariables: aPWBASTGlobalVariables [
	self defaultFamixClass: FamixPWBGlobalVariable.
	^self visit: aPWBASTGlobalVariables attributes.
]

{ #category : #visiting }
PWBVariableDeclarationVisitor >> visitPWBASTSharedVariables: aPWBASTSharedVariables [
	self defaultFamixClass: FamixPWBSharedVariable.
	^self visit: aPWBASTSharedVariables attributes.
]

{ #category : #visiting }
PWBVariableDeclarationVisitor >> visitPWBASTVariableDeclarations: aPWBASTVariableDeclarations [
	| typeIdentifier |
	typeIdentifier := self auxiliaryVisitor: PWBTypeReferenceToIdentifierVisitor visit: aPWBASTVariableDeclarations type type.
	aPWBASTVariableDeclarations variableAssignations
		do: [ :anASTVariableAssignation || var |
			var := self model
						ensureIRForFamixClass: defaultFamixClass
						named: anASTVariableAssignation variable identifier identifier
						owner: self currentEntity.
			var setSourceAnchorFrom: aPWBASTVariableDeclarations file: self file.
			self declaredType: typeIdentifier forIR: var ]
]
