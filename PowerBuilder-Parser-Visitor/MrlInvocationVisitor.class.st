Class {
	#name : #MrlInvocationVisitor,
	#superclass : #PWBASTAbstractVisitor,
	#instVars : [
		'lineText'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #accessing }
MrlInvocationVisitor >> lineText [
	^ lineText
]

{ #category : #accessing }
MrlInvocationVisitor >> lineText: anObject [
	lineText := anObject
]

{ #category : #visiting }
MrlInvocationVisitor >> visit [
	^ self visit: (MrlPWBParser parse: lineText)
]

{ #category : #helpers }
MrlInvocationVisitor >> visitAll: childrenNodes [
	^ childrenNodes
		ifNotNil: [ childrenNodes
				select: [ :each | each isNotNil ]
				thenCollect: [ :aChildNode | aChildNode acceptVisitor: self ] ]
]

{ #category : #helpers }
MrlInvocationVisitor >> visitMrlPWBASTFile: aPWBASTFile [
	^ self visit: aPWBASTFile invocation
]

{ #category : #visiting }
MrlInvocationVisitor >> visitMrlPWBASTFullInvocation: aPWBASTFullInvocation [
	^ lineText
		copyFrom: aPWBASTFullInvocation startPosition
		to: aPWBASTFullInvocation stopPosition
]

{ #category : #visiting }
MrlInvocationVisitor >> visitMrlPWBASTMrlInvocationLine: aPWBASTMrlInvocationLine [
	^ self visitAll: aPWBASTMrlInvocationLine mrlInvocationLines
]
