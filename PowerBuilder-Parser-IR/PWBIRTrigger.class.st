"
Definition of an event handling
Event can be create, destroy, ... or userDefined
(`on someObject.event <statementBlock> end on`)

Instance variable:
- name, of the event
- irEntity, an object (e.g. a DataWindow) on which the event is triggered
"
Class {
	#name : #PWBIRTrigger,
	#superclass : #PWBIRComplexEntity,
	#instVars : [
		'irEntity'
	],
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #mapping }
PWBIRTrigger class >> defaultFamixClasses [
	^{ FamixPWBTrigger }
]

{ #category : #accessing }
PWBIRTrigger >> irEntity [
	^ irEntity
]

{ #category : #accessing }
PWBIRTrigger >> irEntity: anObject [
	irEntity := anObject
]
