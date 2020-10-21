Class {
	#name : #FamixPWBModel,
	#superclass : #MooseModel,
	#instVars : [
		'businessRuleFunctions'
	],
	#category : #'Famix-PowerBuilder-Entities-Model'
}

{ #category : #accessing }
FamixPWBModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits')
]

{ #category : #meta }
FamixPWBModel class >> annotation [
	<FMClass: #FamixPWBModel super: #MooseModel>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
]

{ #category : #'as yet unclassified' }
FamixPWBModel >> allModelPWBUserObjects [
	^ self allWithType: FamixPWBUserObject
]

{ #category : #'as yet unclassified' }
FamixPWBModel >> getBusinessRuleFunctions [
	businessRuleFunctions isEmptyOrNil
		ifTrue: [ businessRuleFunctions := (self
				selectIncomingInvocationMethodsUntilConvergence: (self extractVariables: (self allWithType: FamixPWBWindow)))
				groupedBy: #parentType ].
	^ businessRuleFunctions
]
