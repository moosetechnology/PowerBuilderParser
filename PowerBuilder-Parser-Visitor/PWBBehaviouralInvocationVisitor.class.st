Class {
	#name : #PWBBehaviouralInvocationVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #visiting }
PWBBehaviouralInvocationVisitor >> visitPWBASTDynamicMethodInvocation: aPWBASTMethodInvocation [
	parentVisitor visit: aPWBASTMethodInvocation functionArguments.

	^(self resolvable:
		(SRInvocationIdentifierToIR
			name: (self visit: aPWBASTMethodInvocation uncheckedIdentifier)
			expectedKind: { FamixPWBFunction . FamixPWBEvent }
			node: aPWBASTMethodInvocation))

		ifNotFoundCreateStubInModel: self model ;
		ifFoundCreateDependency ;
		yourself
]

{ #category : #visiting }
PWBBehaviouralInvocationVisitor >> visitPWBASTEventInvocation: aPWBASTEventInvocation [
	parentVisitor visit: aPWBASTEventInvocation functionArguments.
	
	^(self resolvable:
		(SRInvocationIdentifierToIR
			name: (self visit: aPWBASTEventInvocation identifier)
			expectedKind: FamixPWBEvent
			node: aPWBASTEventInvocation))

		ifNotFoundCreateStubInModel: self model ;
		ifFoundCreateDependency ;
		yourself
]

{ #category : #visiting }
PWBBehaviouralInvocationVisitor >> visitPWBASTFunctionInvocation: aPWBASTFunctionInvocation [
	parentVisitor visit: aPWBASTFunctionInvocation functionArguments.
	parentVisitor visit: aPWBASTFunctionInvocation defaultVariable.
	^(self resolvable:
		(SRInvocationIdentifierToIR
			name: (self visit: aPWBASTFunctionInvocation functionName)
			expectedKind: { FamixPWBSubRoutine . FamixPWBFunction }
			node: aPWBASTFunctionInvocation))

		ifNotFoundCreateStubInModel: self model ;
		ifFoundCreateDependency  ;
		yourself

]

{ #category : #visiting }
PWBBehaviouralInvocationVisitor >> visitPWBASTRegularMethodInvocation: aPWBASTMethodInvocation [
	parentVisitor visit: aPWBASTMethodInvocation functionArguments.
	
	^(self resolvable:
		(SRInvocationIdentifierToIR
			name: (self visit: aPWBASTMethodInvocation uncheckedIdentifier)
			expectedKind: { FamixPWBFunction . FamixPWBEvent . FamixPWBSubRoutine }
			node: aPWBASTMethodInvocation))
		
		ifNotFoundCreateStubInModel: self model ;
		ifFoundCreateDependency ;
		yourself
]
