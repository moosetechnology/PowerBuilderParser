Class {
	#name : #SRIRModelScope,
	#superclass : #SRScope,
	#instVars : [
		'irModel'
	],
	#category : #'PowerBuilder-Parser-IR-symbolResolver'
}

{ #category : #accessing }
SRIRModelScope class >> model: aDictionnary [
	^self new
		model: aDictionnary ;
		yourself
]

{ #category : #accessing }
SRIRModelScope >> model: aDictionnary [
	irModel := aDictionnary 
]

{ #category : #accessing }
SRIRModelScope >> reachableEntitiesOwned [
	^ irModel reachableEntitiesOwned
]
