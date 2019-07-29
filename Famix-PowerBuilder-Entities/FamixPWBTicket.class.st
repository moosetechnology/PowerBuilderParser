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

	<MSEClass: #Ticket super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBTicket class >> generatedSlotNames [
	<generated>
	'FamixPWBTicket class>>#generatedSlotNames'.
	^ #(number ticketAssociations)
]

{ #category : #generator }
FamixPWBTicket class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FamixPWBTicket class >> metamodel [

	<generated>
	^ (self class environment at: #PWBFamixModelGenerator) metamodel
]

{ #category : #meta }
FamixPWBTicket class >> requirements [

	<generated>
	^ {  }
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
FamixPWBTicket >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicket >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicket >> isInheritance [

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
FamixPWBTicket >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicket >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBTicket >> isReference [

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

	<MSEProperty: #number type: #Number>
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

	<generated>
	^ ticketAssociations
]

{ #category : #accessing }
FamixPWBTicket >> ticketAssociations: anObject [

	<generated>
	ticketAssociations value: anObject

]
