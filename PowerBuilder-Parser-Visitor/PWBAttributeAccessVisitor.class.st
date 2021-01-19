Class {
	#name : #PWBAttributeAccessVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #visiting }
PWBAttributeAccessVisitor >> visitPWBASTAssignationStatement: aPWBASTAssignationStatement [
	| accessOrType variable |
	accessOrType := self visit: aPWBASTAssignationStatement accessOrType.
	self flag: #TODO.  "expressionIsLeftHandSide := true."
	variable := self visit: aPWBASTAssignationStatement expressionAction.
	(variable isNotNil and: [ variable isResolvable ])
		ifTrue: [ variable previous: accessOrType ].
	"expressionIsLeftHandSide := false."
	self visit: aPWBASTAssignationStatement assignation
]

{ #category : #visiting }
PWBAttributeAccessVisitor >> visitPWBASTAttributeAccess: aPWBASTAttributeAccess [
	self visit: aPWBASTAttributeAccess arrayInformation.
	^SRIdentifierToIR
		name: aPWBASTAttributeAccess uncheckedIdentifier uncheckedIdentifier
		expectedKind: PWBIRValueHolder defaultFamixClasses
		node: aPWBASTAttributeAccess. 
]

{ #category : #visiting }
PWBAttributeAccessVisitor >> visitPWBASTExpressionAction: aPWBASTExpressionAction [
	self flag: 'Quasi clone of PWBEntityCreatorFutureReferenceSolverVisitor>>visitPWBASTAccess:'.
	^ (self currentEntity class = FamixPWBDataWindow
		or: [ self currentEntity class = FamixPWBGraphicComponent ])

		ifTrue: [ super visitPWBASTExpressionAction: aPWBASTExpressionAction ]
		
		ifFalse: [ | srIdentifierWithNode writeAccess |
			"srIdentifierWithNode := self resolvable: (self createSRIdentifier: aPWBASTExpressionAction)."
			srIdentifierWithNode := self visit: aPWBASTExpressionAction action.
			aPWBASTExpressionAction expressionAction
				ifNotNil: [ :subExprAction | srIdentifierWithNode next: (self visit: subExprAction) ].

			"writeAccess := expressionIsLeftHandSide."
			srIdentifierWithNode
				ifNotFoundCreateStubInModel: model ;
				ifFoundCreateDependencyWhen: [ :identifier :currentEntity | 
					(identifier entity class inheritsFrom: FamixPWBmajorObject) not ].
		 ]
]
