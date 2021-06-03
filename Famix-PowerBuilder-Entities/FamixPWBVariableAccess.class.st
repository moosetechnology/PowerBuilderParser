Class {
	#name : #FamixPWBVariableAccess,
	#superclass : #FamixPWBEntity,
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBVariableAccess class >> annotation [

	<FMClass: #VariableAccess super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixPWBVariableAccess >> isInstanceVariableAccess [
	^ variable isInstanceVariable
		and: [ ({'true' . 'false'} includes: variable name asLowercase) not ]
]
