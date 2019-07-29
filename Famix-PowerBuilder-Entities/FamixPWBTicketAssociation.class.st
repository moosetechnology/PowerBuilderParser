Class {
	#name : #FamixPWBTicketAssociation,
	#superclass : #MooseEntity,
	#instVars : [
		'#date',
		'#author',
		'#majorObject => FMOne type: #FamixPWBmajorObject opposite: #ticketAssociations',
		'#ticket => FMOne type: #FamixPWBTicket opposite: #ticketAssociations'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBTicketAssociation class >> annotation [

	<MSEClass: #TicketAssociation super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBTicketAssociation class >> generatedSlotNames [
	<generated>
	'FamixPWBTicketAssociation class>>#generatedSlotNames'.
	^ #(author date majorObject ticket)
]

{ #category : #generator }
FamixPWBTicketAssociation class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FamixPWBTicketAssociation class >> metamodel [

	<generated>
	^ (self class environment at: #PWBFamixModelGenerator) metamodel
]

{ #category : #meta }
FamixPWBTicketAssociation class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FamixPWBTicketAssociation >> author [

	<MSEProperty: #author type: #String>
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

	<MSEProperty: #date type: #String>
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
FamixPWBTicketAssociation >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicketAssociation >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicketAssociation >> isInheritance [

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
FamixPWBTicketAssociation >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicketAssociation >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicketAssociation >> isReference [

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

	<generated>
	^ ticket
]

{ #category : #accessing }
FamixPWBTicketAssociation >> ticket: anObject [

	<generated>
	ticket := anObject

]
