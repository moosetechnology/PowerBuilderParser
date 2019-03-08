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
PWBModelImporter >> visitPWBASTGraphicComponent: aPWBASTGraphicComponent [
	self
		useCurrentEntity: (self create: FamixPWBGraphicComponent from: aPWBASTGraphicComponent)
		during: [ super visitPWBASTGraphicComponent: aPWBASTGraphicComponent ]
]
