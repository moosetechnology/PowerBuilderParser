Class {
	#name : #MrlInvocationVisitor,
	#superclass : #PWBASTAbstractVisitor,
	#instVars : [
		'lineText'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #visiting }
MrlInvocationVisitor >> visit [
	^ self visit: (MrlPWBParser parse: lineText)
]

{ #category : #helpers }
MrlInvocationVisitor >> visitAll: childrenNodes [
	^ childrenNodes
		ifNotNil: [ childrenNodes
				select: [ :each | each isKindOf: PWBASTFullInvocation ]
				thenCollect: [ :aChildNode | aChildNode acceptVisitor: self ] ]
]

{ #category : #visiting }
MrlInvocationVisitor >> visitPWBASTFullInvocation: aPWBASTFullInvocation [
	^ lineText
		copyFrom: aPWBASTFullInvocation startPosition
		to: aPWBASTFullInvocation stopPosition
]
