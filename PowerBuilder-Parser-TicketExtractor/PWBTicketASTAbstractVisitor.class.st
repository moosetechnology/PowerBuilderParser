Class {
	#name : #PWBTicketASTAbstractVisitor,
	#superclass : #Object,
	#category : #'PowerBuilder-Parser-TicketExtractor'
}

{ #category : #helpers }
PWBTicketASTAbstractVisitor >> visit: aChildNode [
	^ aChildNode ifNotNil: [ aChildNode acceptVisitor: self ]
]

{ #category : #helpers }
PWBTicketASTAbstractVisitor >> visitAll: childrenNodes [
	childrenNodes
		ifNotNil: [ childrenNodes do: [ :aChildNode | aChildNode acceptVisitor: self ] ]
]

{ #category : #visiting }
PWBTicketASTAbstractVisitor >> visitPWBTicketASTAuthor: anPWBTicketASTAuthor [
	<generated>
	^ anPWBTicketASTAuthor author
]

{ #category : #visiting }
PWBTicketASTAbstractVisitor >> visitPWBTicketASTCommitComment: aPWBTicketASTCommitComment [
	<generated>
	self visit: aPWBTicketASTCommitComment ticketNumber.
	self visitAll: aPWBTicketASTCommitComment others.
]

{ #category : #visiting }
PWBTicketASTAbstractVisitor >> visitPWBTicketASTDate: anPWBTicketASTDate [
	<generated>
	^ anPWBTicketASTDate date
]

{ #category : #visiting }
PWBTicketASTAbstractVisitor >> visitPWBTicketASTTicketNumber: anPWBTicketASTTicketNumber [
	<generated>
	^ anPWBTicketASTTicketNumber ticketNumber
]

{ #category : #visiting }
PWBTicketASTAbstractVisitor >> visitPWBTicketASTWater: anPWBTicketASTWater [
	<generated>
	^ anPWBTicketASTWater water
]
