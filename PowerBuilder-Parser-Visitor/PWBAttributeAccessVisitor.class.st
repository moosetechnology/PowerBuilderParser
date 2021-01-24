"
A special visitor for chained access to identifiers (i.e. `a.b.c`)

Chained identifiers are handled by the `next` instance variable of SRIdentifier
Plus there are some special actions to be taken, for example in the expression above, `b` must be looked for within the scope of `a`, not in the current scope

Instance variables:
- isChained, a boolean indication whether the current expression is the first identifier (=`false`) or another one in the chain
"
Class {
	#name : #PWBAttributeAccessVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#instVars : [
		'isChained'
	],
	#category : #'PowerBuilder-Parser-Visitor-visitors'
}

{ #category : #initialization }
PWBAttributeAccessVisitor >> initialize [
	super initialize.
	isChained := false
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
	^SRIdentifierToIR
		name: aPWBASTAttributeAccess uncheckedIdentifier uncheckedIdentifier
		expectedKind: PWBIRValueHolder defaultFamixClasses
		node: aPWBASTAttributeAccess. 
]

{ #category : #visiting }
PWBAttributeAccessVisitor >> visitPWBASTExpressionAction: aPWBASTExpressionAction [
	| srIdentifier |
	self flag: 'Quasi clone of PWBEntityCreatorFutureReferenceSolverVisitor>>visitPWBASTAccess:'.
	(self currentEntity class = FamixPWBDataWindow
		or: [ self currentEntity class = FamixPWBGraphicComponent ])
		ifTrue: [ ^super visitPWBASTExpressionAction: aPWBASTExpressionAction ].

	srIdentifier := self visit: aPWBASTExpressionAction action.
	aPWBASTExpressionAction expressionAction
		ifNotNil: [ :subExprAction ||wasChained|
			wasChained := isChained.
			isChained := true.
			srIdentifier next: (self visit: subExprAction).
			isChained := wasChained ].

	self flag: #TODO.	"writeAccess := expressionIsLeftHandSide."
	isChained
		ifFalse: [ srIdentifier ifNotFoundCreateStubInModel: self model ]
		ifTrue: [ srIdentifier ifNotFoundCreateFromChainInModel: self model ].
	srIdentifier isLast
		ifTrue: [ srIdentifier ifFoundCreateDependencyInModel: self model ]
		ifFalse: [
			srIdentifier foundAction: [ :identifier :currentEntity |
				currentEntity addAccessDependency: identifier entity inModel: self model.
				identifier next chainedOwner: identifier entity declaredType ]
		].
	^srIdentifier

]

{ #category : #visiting }
PWBAttributeAccessVisitor >> visitPWBASTMethodInvocation: aPWBASTMethodInvocation [
	^self visit: aPWBASTMethodInvocation methodInvocation.
]

{ #category : #visiting }
PWBAttributeAccessVisitor >> visitPWBASTRegularMethodInvocation: aPWBASTRegularMethodInvocation [
	self flag: 'why not self resolve: here ?'.
	^self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTRegularMethodInvocation
]
