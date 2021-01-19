Class {
	#name : #PWBAttributeAccessVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #'entities creation' }
PWBAttributeAccessVisitor >> createSRIdentifier: aPWBASTExpressionAction [
	| sRIdentifierWithNode |
	sRIdentifierWithNode := SRIdentifierToIR
		name: (self visit: aPWBASTExpressionAction action)
		expectedKind: PWBIRValueHolder defaultFamixClasses
		node: aPWBASTExpressionAction.
	aPWBASTExpressionAction expressionAction
		ifNotNil: [ :subExprAction | 
			subExprAction isAttributeAccess
				ifTrue: [ sRIdentifierWithNode next: (self createSRIdentifier: subExprAction) ]
				ifFalse: [ sRIdentifierWithNode next: (self visit: subExprAction) ] ].
	^ sRIdentifierWithNode
]

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
	^ self visit: aPWBASTAttributeAccess uncheckedIdentifier
]

{ #category : #visiting }
PWBAttributeAccessVisitor >> visitPWBASTExpressionAction: aPWBASTExpressionAction [
	self flag: 'Quasi clone of PWBEntityCreatorFutureReferenceSolverVisitor>>visitPWBASTAccess:'.
	^ (self currentEntity class = FamixPWBDataWindow
		or: [ self currentEntity class = FamixPWBGraphicComponent ])

		ifTrue: [ super visitPWBASTExpressionAction: aPWBASTExpressionAction ]
		
		ifFalse: [ | sRIdentifierWithNode writeAccess |
			sRIdentifierWithNode := self resolvable: (self createSRIdentifier: aPWBASTExpressionAction).
			"writeAccess := expressionIsLeftHandSide."
			sRIdentifierWithNode
				foundAction: [ :identifier :currentEntity | 
					(identifier entity class inheritsFrom: FamixPWBmajorObject)
						ifFalse: [
							currentEntity addDependency: identifier entity.
							self flag: #TODO.   "will need to deal with read/write accesses"
							"self
								createAccessFrom: currentEntity
								to: identifier representationString
								isWrite: writeAccess" ] ];
				defaultNotFoundReplacementBlockInModel: model.
			self resolve: sRIdentifierWithNode ]
]
