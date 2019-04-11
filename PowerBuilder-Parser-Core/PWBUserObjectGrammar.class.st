Class {
	#name : #PWBUserObjectGrammar,
	#superclass : #PWBCommonGrammar,
	#instVars : [
		'userObjectFile'
	],
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #parsing }
PWBUserObjectGrammar class >> supportedExtensions [
	^ {'sru' . 'srf'}
]

{ #category : #accessing }
PWBUserObjectGrammar >> file [
	<rename: #userObjectFile into: #content>
	^ userObjectFile
]

{ #category : #accessing }
PWBUserObjectGrammar >> userObjectFile [
	^ commonFile 
]
