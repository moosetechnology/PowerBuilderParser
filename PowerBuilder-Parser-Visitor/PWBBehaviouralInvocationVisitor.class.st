"
A special visitor for all behaviorual invocations
Will always return an SRIdentifier to resolve to the calling visitor

"
Class {
	#name : #PWBBehaviouralInvocationVisitor,
	#superclass : #PWBAbstractAuxiliaryVisitor,
	#category : #'PowerBuilder-Parser-Visitor-visitors'
}

{ #category : #visiting }
PWBBehaviouralInvocationVisitor >> visitPWBASTDynamicMethodInvocation: aPWBASTMethodInvocation [
	parentVisitor visit: aPWBASTMethodInvocation functionArguments.
	^self resolvable:
		((SRInvocationIdentifierToIR
			name: (self visit: aPWBASTMethodInvocation uncheckedIdentifier)
			expectedKind: { FamixPWBFunction . FamixPWBEvent }
			node: aPWBASTMethodInvocation)

			ifNotFoundCreateStubInModel: self model;
			ifFoundCreateDependencyInModel: self model;
			yourself)
]

{ #category : #visiting }
PWBBehaviouralInvocationVisitor >> visitPWBASTEventInvocation: aPWBASTEventInvocation [
	parentVisitor visit: aPWBASTEventInvocation functionArguments.
	^self resolvable:
		((SRInvocationIdentifierToIR
			name: (self visit: aPWBASTEventInvocation identifier)
			expectedKind: FamixPWBEvent
			node: aPWBASTEventInvocation)
			
			ifNotFoundCreateStubInModel: self model;
			ifFoundCreateDependencyInModel: self model;
			yourself)
]

{ #category : #visiting }
PWBBehaviouralInvocationVisitor >> visitPWBASTEventType: aPWBASTEventType [
	^self visit: aPWBASTEventType eventType.
]

{ #category : #visiting }
PWBBehaviouralInvocationVisitor >> visitPWBASTFunctionInvocation: aPWBASTFunctionInvocation [
	parentVisitor visit: aPWBASTFunctionInvocation functionArguments.
	parentVisitor visit: aPWBASTFunctionInvocation defaultVariable.
	^self resolvable:
		((SRInvocationIdentifierToIR
			name: (self visit: aPWBASTFunctionInvocation functionName)
			expectedKind: { FamixPWBSubRoutine . FamixPWBFunction }
			node: aPWBASTFunctionInvocation)

			ifNotFoundCreateStubInModel: self model;
			ifFoundCreateDependencyInModel: self model;
			yourself)
]

{ #category : #visiting }
PWBBehaviouralInvocationVisitor >> visitPWBASTRegularMethodInvocation: aPWBASTMethodInvocation [
	parentVisitor visit: aPWBASTMethodInvocation functionArguments.
	^self resolvable:
		((SRInvocationIdentifierToIR
			name: (self visit: aPWBASTMethodInvocation uncheckedIdentifier)
			expectedKind: { FamixPWBFunction . FamixPWBEvent . FamixPWBSubRoutine }
			node: aPWBASTMethodInvocation)

			ifNotFoundCreateStubInModel: self model;
			ifFoundCreateDependencyInModel: self model;
			yourself)
]
