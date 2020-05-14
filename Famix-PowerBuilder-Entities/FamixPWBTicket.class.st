Class {
	#name : #FamixPWBTicket,
	#superclass : #FamixPWBEntity,
	#instVars : [
		'#number',
		'#ticketAssociations => FMMany type: #FamixPWBTicketAssociation opposite: #ticket'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBTicket class >> annotation [

	<FMClass: #Ticket super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixPWBTicket >> addTicketAssociation: anObject [
	<generated>
	^ self ticketAssociations add: anObject
]

{ #category : #accessing }
FamixPWBTicket >> number [

	<FMProperty: #number type: #Number>
	<generated>
	^ number
]

{ #category : #accessing }
FamixPWBTicket >> number: anObject [
	<generated>
	number := anObject
]

{ #category : #accessing }
FamixPWBTicket >> ticketAssociations [
	"Relation named: #ticketAssociations type: #FamixPWBTicketAssociation opposite: #ticket"

	<generated>
	<derived>
	^ ticketAssociations
]

{ #category : #accessing }
FamixPWBTicket >> ticketAssociations: anObject [

	<generated>
	ticketAssociations value: anObject
]
