Class {
	#name : #PWBIRTrigger,
	#superclass : #PWBIRComplexEntity,
	#instVars : [
		'event'
	],
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #mapping }
PWBIRTrigger class >> defaultFamixClasses [
	^{ FamixPWBTrigger }
]

{ #category : #accessing }
PWBIRTrigger >> event [
	^ event
]

{ #category : #accessing }
PWBIRTrigger >> event: anObject [
	event := anObject
]
