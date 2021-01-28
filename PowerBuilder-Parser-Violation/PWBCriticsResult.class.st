Class {
	#name : #PWBCriticsResult,
	#superclass : #Object,
	#instVars : [
		'rulesPassed',
		'rulesViolated',
		'file',
		'model'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #adding }
PWBCriticsResult >> addRulePassed: aPWBRule [
	(rulesPassed includes: aPWBRule)
		ifTrue: [ ^ self ].
	rulesPassed add: aPWBRule
]

{ #category : #adding }
PWBCriticsResult >> addRuleViolated: aPWBRule [
	(rulesViolated  includes: aPWBRule)
		ifTrue: [ ^ self ].
	rulesViolated  add: aPWBRule
]

{ #category : #accessing }
PWBCriticsResult >> file: aPath [
	aPath asFileReference exists
		ifFalse: [ ^ self ].
	file := aPath asFileReference.
	model := PWBFamixImporter createModelFor: file.
	self runRules
]

{ #category : #initialization }
PWBCriticsResult >> initialize [
	rulesPassed := OrderedCollection new.
	rulesViolated := OrderedCollection new
]

{ #category : #accessing }
PWBCriticsResult >> model [
	^ model
]

{ #category : #adding }
PWBCriticsResult >> removePassed: aPWBRule [
	rulesPassed remove: aPWBRule
]

{ #category : #adding }
PWBCriticsResult >> removeViolated: aPWBRule [
	rulesViolated remove: aPWBRule
]

{ #category : #'as yet unclassified' }
PWBCriticsResult >> runRules [
	PWBVariableRules runRules: self
]
