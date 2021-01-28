Class {
	#name : #PWBExpressionsVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#instVars : [
		'isChained'
	],
	#category : #'PowerBuilder-Parser-Visitor-visitors'
}

{ #category : #helpers }
PWBExpressionsVisitor >> handleExpression: exprBeforeDot dotExpression: exprAfterDot [
	| srIdentifier |
	srIdentifier := self visit: exprBeforeDot.
	srIdentifier isResolvable ifFalse: [ ^PWBNullEntityObject new ].

	exprAfterDot
		ifNotNil: [ :subExprAction ||wasChained|
			wasChained := isChained.
			isChained := true.
			srIdentifier next: (self visit: exprAfterDot).
			isChained := wasChained ].

	isChained
		ifFalse: [ srIdentifier ifNotFoundCreateStubInModel: self model ]
		ifTrue: [ srIdentifier ifNotFoundCreateFromChainInModel: self model ].
	srIdentifier isLast
		ifTrue: [ srIdentifier ifFoundCreateDependencyInModel: self model ]
		ifFalse: [
			srIdentifier foundAction: [ :identifier :currentEntity |
				identifier entity addReferenceBy: currentEntity inModel: self model.
				identifier next chainedOwner: identifier entity declaredType ]
		].
	^isChained
		ifTrue: [ srIdentifier ]
		ifFalse: [  self resolve: srIdentifier ]
]

{ #category : #initialization }
PWBExpressionsVisitor >> initialize [
	super initialize.
	isChained := false
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTAccess: aPWBASTAccess [
	| srIdentifier |
	self visit: aPWBASTAccess arrayPosition.

	srIdentifier := self visit: aPWBASTAccess accessed.
	"if accessed is THIS, we already set its #foundAction"
	srIdentifier foundAction
		ifNil: [
			srIdentifier
				ifNotFoundCreateStubInModel: (self model) ;
				ifFoundCreateDependencyInModel: (self model)
		].

	^srIdentifier
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTAccessOrType: aPWBASTAccessOrType [
	"returns the value of the visit"
	^self visit: aPWBASTAccessOrType accessOrType.
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTAssignationStatement: aPWBASTAssignationStatement [
	self flag: #TODO.
	self shouldNotImplement
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTAttributeAccess: aPWBASTAttributeAccess [
	self visit: aPWBASTAttributeAccess arrayInformation.
	^SRIdentifierToIR
		name: aPWBASTAttributeAccess uncheckedIdentifier uncheckedIdentifier
		expectedKind: PWBIRValueHolder defaultFamixClasses
		node: aPWBASTAttributeAccess. 
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTCallStatement: aPWBASTCallStatement [

	self resolve:
		((self visit: aPWBASTCallStatement variable)
			ifNotFoundCreateStubInModel: (self model) ;
			ifFoundCreateDependencyInModel: (self model) ;
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
	"do not call #resolve: here because is part of a chaineIdentifier"
	^self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTMethodInvocation
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
PWBExpressionsVisitor >> visitPWBASTExpression: aPWBASTExpression [
	(self currentEntity class = FamixPWBDataWindow
		or: [ self currentEntity class = FamixPWBGraphicComponent ])
		ifTrue: [ ^super visitPWBASTExpressionAction: aPWBASTExpression ].

	^self handleExpression: aPWBASTExpression expression dotExpression: aPWBASTExpression expressionAction

]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTExpressionAction: aPWBASTExpressionAction [
	(self currentEntity class = FamixPWBDataWindow
		or: [ self currentEntity class = FamixPWBGraphicComponent ])
		ifTrue: [ ^super visitPWBASTExpressionAction: aPWBASTExpressionAction ].

	^self handleExpression: aPWBASTExpressionAction action dotExpression: aPWBASTExpressionAction expressionAction

]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTExpressionTerm: aPWBASTExpressionTerm [
	"returns the value of the visit"
	^self visit: aPWBASTExpressionTerm expressionTerm.
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTFunctionInvocation: aPWBASTFunctionInvocation [
	^self resolve:
		(self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTFunctionInvocation)
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTMethodInvocation: aPWBASTMethodInvocation [
	"returns the value of the visit"
	^self visit: aPWBASTMethodInvocation methodInvocation.
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTRegularMethodInvocation: aPWBASTRegularMethodInvocation [
	"do not call #resolve: here because is part of a chaineIdentifier"
	^self auxiliaryVisitor: PWBBehaviouralInvocationVisitor visit: aPWBASTRegularMethodInvocation
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTSpecialVariable: aPWBASTSpecialVariable [
	"overrides to return the result of visiting"
	^ self visit: aPWBASTSpecialVariable this
]

{ #category : #visiting }
PWBExpressionsVisitor >> visitPWBASTThis: aPWBASTThis [
	| thisVariable |
	thisVariable := self model
		irStub: PWBIRValueHolder
		named: 'this'.
	thisVariable declaredType: 
		(self solver scopes detect: [ :scope |
			scope currentEntity expectedFamixKinds
				anySatisfy: [ :kind | self isMajorObjectKind: kind ] ])
			entity.

	^(SRThisToIR node: aPWBASTThis)
		entity: thisVariable ;
		yourself.

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
