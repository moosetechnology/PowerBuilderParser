Class {
	#name : #FamixPWBTicket,
	#superclass : #MooseEntity,
	#instVars : [
		'#number',
		'#ticketAssociations => FMMany type: #FamixPWBTicketAssociation opposite: #ticket'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBTicket class >> annotation [

	<FMClass: #Ticket super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixPWBTicket class >> metamodel [

	<generated>
	^ FamixPWBModel metamodel
]

{ #category : #adding }
FamixPWBTicket >> addTicketAssociation: anObject [
	<generated>
	^ self ticketAssociations add: anObject
]

{ #category : #testing }
FamixPWBTicket >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicket >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicket >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicket >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicket >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicket >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicket >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicket >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicket >> isType [

	<generated>
	^ false
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
