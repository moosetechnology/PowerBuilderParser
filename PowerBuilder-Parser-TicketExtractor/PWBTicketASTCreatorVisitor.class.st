Class {
	#name : #PWBTicketASTCreatorVisitor,
	#superclass : #PWBTicketASTAbstractVisitor,
	#instVars : [
		'currentAssociation',
		'majorObject'
	],
	#category : #'PowerBuilder-Parser-TicketExtractor'
}

{ #category : #visiting }
PWBTicketASTCreatorVisitor >> ensureEntityWithType: aType number: aNumber inModel: model [
	^ (model entityStorage selectAllWithType: aType)
		detect: [ :entity | entity number = aNumber ]
		ifNone: [ aType new
				number: aNumber;
				mooseModel: model;
				yourself ]
]

{ #category : #accessing }
PWBTicketASTCreatorVisitor >> majorObject [
	^ majorObject
]

{ #category : #accessing }
PWBTicketASTCreatorVisitor >> majorObject: anObject [
	majorObject := anObject
]

{ #category : #visiting }
PWBTicketASTCreatorVisitor >> visitPWBTicketASTAuthor: anPWBTicketASTAuthor [
	currentAssociation author: anPWBTicketASTAuthor author
]

{ #category : #visiting }
PWBTicketASTCreatorVisitor >> visitPWBTicketASTCommitComment: aPWBTicketASTCommitComment [
	currentAssociation := FamixPWBTicketAssociation new
		ticket:
			(self
				ensureEntityWithType: FamixPWBTicket
				number: (self visit: aPWBTicketASTCommitComment ticketNumber)
				inModel: self majorObject mooseModel);
		majorObject: self majorObject;
		mooseModel: self majorObject mooseModel.
		
	self visitAll: aPWBTicketASTCommitComment others.
]

{ #category : #visiting }
PWBTicketASTCreatorVisitor >> visitPWBTicketASTDate: anPWBTicketASTDate [
	currentAssociation date: anPWBTicketASTDate date
]

{ #category : #visiting }
PWBTicketASTCreatorVisitor >> visitPWBTicketASTTicketNumber: anPWBTicketASTTicketNumber [
	^ anPWBTicketASTTicketNumber ticketNumber asNumber
]
