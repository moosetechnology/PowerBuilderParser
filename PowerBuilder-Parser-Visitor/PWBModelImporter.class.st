Class {
	#name : #PWBModelImporter,
	#superclass : #PWBASTAbstractVisitor,
	#traits : 'SRSolverUserVisitor',
	#classTraits : 'SRSolverUserVisitor classTrait',
	#instVars : [
		'model'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #accessing }
PWBModelImporter >> initialize [
	super initialize.
	self initialiseSolver
]

{ #category : #accessing }
PWBModelImporter >> model [
	^ model
]

{ #category : #accessing }
PWBModelImporter >> model: anObject [
	model := anObject
]

{ #category : #visiting }
PWBModelImporter >> visitPWBASTFunctionDeclaration: aPWBASTFunctionDeclaration [
	self
		useCurrentEntity: PWBNullEntityObject new
		during: [ super visitPWBASTFunctionDeclaration: aPWBASTFunctionDeclaration ]
]

{ #category : #visiting }
PWBModelImporter >> visitPWBASTFunctionDefinition: aPWBASTFunctionDefinition [
	self
		useCurrentEntity: (self create: FamixPWBFunction from: aPWBASTFunctionDefinition)
		during: [ super visitPWBASTFunctionDefinition: aPWBASTFunctionDefinition ]
]

{ #category : #visiting }
PWBModelImporter >> visitPWBASTFunctionSignature: aPWBASTFunctionSignature [
	self visit: aPWBASTFunctionSignature accessModifier.
	self visit: aPWBASTFunctionSignature type.
	self currentEntity
		name: (self visit: aPWBASTFunctionSignature identifier).
	self visit: aPWBASTFunctionSignature arguments
]

{ #category : #visiting }
PWBModelImporter >> visitPWBASTGraphicComponent: aPWBASTGraphicComponent [
	self
		useCurrentEntity: (self create: FamixPWBGraphicComponent from: aPWBASTGraphicComponent)
		during: [ super visitPWBASTGraphicComponent: aPWBASTGraphicComponent ]
]
