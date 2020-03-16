Class {
	#name : #FamixPWBTicketAssociation,
	#superclass : #MooseEntity,
	#instVars : [
		'#author',
		'#date',
		'#majorObject => FMOne type: #FamixPWBmajorObject opposite: #ticketAssociations',
		'#ticket => FMOne type: #FamixPWBTicket opposite: #ticketAssociations'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBTicketAssociation class >> annotation [

	<FMClass: #TicketAssociation super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixPWBTicketAssociation class >> metamodel [

	<generated>
	^ FamixPWBModel metamodel
]

{ #category : #accessing }
FamixPWBTicketAssociation >> author [

	<FMProperty: #author type: #String>
	<generated>
	^ author
]

{ #category : #accessing }
FamixPWBTicketAssociation >> author: anObject [
	<generated>
	author := anObject
]

{ #category : #accessing }
FamixPWBTicketAssociation >> date [

	<FMProperty: #date type: #String>
	<generated>
	^ date
]

{ #category : #accessing }
FamixPWBTicketAssociation >> date: anObject [
	<generated>
	date := anObject
]

{ #category : #testing }
FamixPWBTicketAssociation >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicketAssociation >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicketAssociation >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicketAssociation >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicketAssociation >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicketAssociation >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicketAssociation >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicketAssociation >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicketAssociation >> isType [

	<generated>
	^ false
]

{ #category : #accessing }
FamixPWBTicketAssociation >> majorObject [
	"Relation named: #majorObject type: #FamixPWBmajorObject opposite: #ticketAssociations"

	<generated>
	^ majorObject
]

{ #category : #accessing }
FamixPWBTicketAssociation >> majorObject: anObject [

	<generated>
	majorObject := anObject
]

{ #category : #accessing }
FamixPWBTicketAssociation >> ticket [
	"Relation named: #ticket type: #FamixPWBTicket opposite: #ticketAssociations"

	<generated>
	^ ticket
]

{ #category : #accessing }
FamixPWBTicketAssociation >> ticket: anObject [

	<generated>
	ticket := anObject
]
