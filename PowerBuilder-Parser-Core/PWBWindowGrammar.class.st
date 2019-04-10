Class {
	#name : #PWBWindowGrammar,
	#superclass : #PWBCommonGrammar,
	#instVars : [
		'windowFile'
	],
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #parsing }
PWBWindowGrammar class >> supportedExtensions [
	^ { 'srw' }
]

{ #category : #accessing }
PWBWindowGrammar >> file [
	<rename: #windowFile into: #content>
	^ windowFile
]

{ #category : #accessing }
PWBWindowGrammar >> windowFile [
	^ commonFile 
]
