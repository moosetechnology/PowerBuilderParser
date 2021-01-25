"
A special visitor for some of the expressions in statements or declarations.
PWBAttributeAccessVisitor and PWBBehaviouralInvocationVisitor or the other special visitors taking care of expressions.


Instance variables:
- isLeftHandSide, whether the expression (actually a variable name) is on the left hand side of an assignement. If so creates an access in writing, otherwise, all accesses are assumed to be in reading
"
Class {
	#name : #PWBExpressionsVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#instVars : [
		'isLeftHandSide'
	],
	#category : #'PowerBuilder-Parser-Visitor-visitors'
}

{ #category : #initialization }
PWBExpressionsVisitor >> initialize [
	super initialize.
	isLeftHandSide := false
]

{ #category : #accessing }
PWBExpressionsVisitor >> isLeftHandSide [
	^ isLeftHandSide
]

{ #category : #accessing }
PWBExpressionsVisitor >> isLeftHandSide: anObject [
	isLeftHandSide := anObject
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTAccess: aPWBASTAccess [
	| srIdentifier |
	self
		flag: 'Quasi clone of PWBAttributeAccessVisitor>>createAttributeAcces:'.
	self visit: aPWBASTAccess arrayPosition.

	srIdentifier := self visit: aPWBASTAccess accessed.
	srIdentifier foundAction
		ifNil: [ "Special variable THIS already has a foundAction"
			srIdentifier
				ifNotFoundCreateStubInModel: self model.
			(srIdentifier entity class inheritsFrom: FamixPWBmajorObject) 
				ifFalse: [
					srIdentifier foundAction: [ :identifier :currentEntity | 
						(currentEntity addAccessDependency: identifier entity inModel: self model)
							isWrite: self isLeftHandSide ]
				] ].

	^self resolve: srIdentifier
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTAttributeAccess: aPWBASTAttributeAccess [
self shouldNotImplement .
	self visit: aPWBASTAttributeAccess arrayInformation.
	^ self visit: aPWBASTAttributeAccess uncheckedIdentifier
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTCallStatement: aPWBASTCallStatement [

	self resolve:
		((self visit: aPWBASTCallStatement variable)
			ifNotFoundCreateStubInModel: (self model) ;
			foundAction: [ :identifier :currentEntity | 
				(currentEntity addAccessDependency: identifier entity inModel: self model)
					isWrite: (self isLeftHandSide) ;
					yourself.
			] ;
			yourself).

	self visit: aPWBASTCallStatement identifier.

	^self visit:
		(self
			convertNode: aPWBASTCallStatement
			to: PWBASTEventInvocation
			withIdentifier: aPWBASTCallStatement eventType)
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTDefaultVariable: aPWBASTDefaultVariable [
	^self resolvable:
		(SRIdentifierToIR
			name: aPWBASTDefaultVariable defaultVariable
			expectedKind: { FamixPWBVariable }
			node: aPWBASTDefaultVariable)
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTDynamicMethodInvocation: aPWBASTMethodInvocation [
	aPWBASTMethodInvocation functionArguments.
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTMethodInvocation)
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTEventInvocation: aPWBASTEventInvocation [
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTEventInvocation)
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTEventTriggeringOrPosting: aPWBASTEventTriggeringOrPosting [
	"converting it to an EventInvocation"
	| customIdentifier eventName |
	[ eventName := aPWBASTEventTriggeringOrPosting eventName toString ]
		on: Error
		do: [ ^ self ].
	customIdentifier := PWBASTIdentifier new
		identifier:
			((eventName copyReplaceAll: '"' with: '') copyReplaceAll: '!' with: '');
		yourself.

	^self visit:
		(self convertNode: aPWBASTEventTriggeringOrPosting to: PWBASTEventInvocation withIdentifier: customIdentifier)
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTExpressionAction: aPWBASTExpressionAction [
	^ aPWBASTExpressionAction isAttributeAccess
		ifTrue: [
			self resolve:
				(self auxiliaryVisitor: PWBAttributeAccessVisitor visit: aPWBASTExpressionAction) ]
		ifFalse: [
			aPWBASTExpressionAction expressionAction
			ifNil: [ self visit: aPWBASTExpressionAction action ]
			ifNotNil: [
				self visit: aPWBASTExpressionAction action.
				self visit: aPWBASTExpressionAction expressionAction
		] ]
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTFunctionInvocation: aPWBASTFunctionInvocation [
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTFunctionInvocation)
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTMethodInvocation: aPWBASTMethodInvocation [
	^ self visit: aPWBASTMethodInvocation methodInvocation
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTRegularMethodInvocation: aPWBASTRegularMethodInvocation [
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTRegularMethodInvocation)
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTSpecialVariable: aPWBASTSpecialVariable [
	"overrides to return the result of visiting"
	^ self visit: aPWBASTSpecialVariable this
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTThis: aPWBASTThis [
	| resolvable thisVariable |
	thisVariable := self model
		irStub: PWBIRValueHolder
		named: 'this'.
	self currentEntity addAccessDependency: thisVariable inModel: self model.
	resolvable :=
		(SRThisWithNode
			node: aPWBASTThis
			validationBlock: [ :entity |
				entity expectedFamixKinds anySatisfy: [ :kind | self isMajorObjectKind: kind ] ]).

	resolvable
		foundAction: [ :identifier :currentEntity |
			thisVariable declaredType: identifier entity
		];
		notFoundReplacementEntity: [ :identifier :currentEntity | 
			self shouldNotImplement ].

	^self resolvable: resolvable

]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTVariable: aPWBASTVariable [
	| resolvable arrayWithSize |
	arrayWithSize := self visit: aPWBASTVariable arrayDefinition.
	resolvable := SRIdentifierToIR
		name: (self visit: aPWBASTVariable identifier)
		expectedKind: PWBIRValueHolder defaultFamixClasses
		node: aPWBASTVariable identifier.
	resolvable arrayDefinition: arrayWithSize.
	^ self resolvable: resolvable
]
