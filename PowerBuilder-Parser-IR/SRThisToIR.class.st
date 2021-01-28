"
A symbol to resolve for the special variable THIS
Used for polymorphism purposes as we can always resolve THIS in any scope
Used for example when we have chained identifiers: this.a.b
May be we could do without it
"
Class {
	#name : #SRThisToIR,
	#superclass : #SRThisWithNode,
	#instVars : [
		'referenceIsAssigned'
	],
	#category : #'PowerBuilder-Parser-IR-symbolResolver'
}

{ #category : #accessing }
SRThisToIR class >> node: aNode [
	^ self new node: aNode
]

{ #category : #accessing }
SRThisToIR class >> node: aNode validationBlock: validationAsTypeBlock [
	^ self new
		node: aNode;
		validationBlock: validationAsTypeBlock;
		yourself
]

{ #category : #resolution }
SRThisToIR >> ifFoundCreateDependencyInModel: irModel [

	self foundAction: [ :me :currentEntity | 
			currentEntity addAccessDependency: self entity inModel: irModel ]
]

{ #category : #resolution }
SRThisToIR >> ifNotFoundCreateStubInModel: irModel [
	"defined for polymorphism, but THIS is always resolved in any scope so nothing to do"

]

{ #category : #accessing }
SRThisToIR >> referenceIsAssigned [
	"State that the referenced identifier is assigned
	 therefore this is a write access to a variable"
	self isLast
	ifTrue: [ self shouldNotImplement ]
	ifFalse: [ self next referenceIsAssigned ]
]

{ #category : #resolution }
SRThisToIR >> resolveInScope: aSRScope currentEntity: currentEntity [
	"THIS is always resolved in any scope. It comes with its own resolved variable already created"
	self triggerFoundActionWithCurrentEntity: currentEntity.

	self isLast ifFalse: [
		^self
			resolveChained: self next
			usedIn: currentEntity
			definedIn: self entity asSREntityScope  ].
	^self entity

]
