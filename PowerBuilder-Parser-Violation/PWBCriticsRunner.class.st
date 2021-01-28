Class {
	#name : #PWBCriticsRunner,
	#superclass : #Object,
	#instVars : [
		'criticResults',
		'files'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #running }
PWBCriticsRunner class >> runOn: aCollection [
	^ self new
		files: aCollection;
		runAll
]

{ #category : #running }
PWBCriticsRunner class >> runOn: aRepoPathString withVcs: aVcs [
	^ self
		runOn: (PWBLastChangesFileDownloader lastChanges: aRepoPathString vcs: aVcs)
]

{ #category : #accessing }
PWBCriticsRunner >> files: aCollection [
	files := aCollection
	
]

{ #category : #initialization }
PWBCriticsRunner >> initialize [
	super initialize.
	criticResults := Dictionary new
]

{ #category : #actions }
PWBCriticsRunner >> runAll [
	files
		do:
			[ :aFile | criticResults at: aFile name put: (PWBCriticsResult new file: aFile) ]
]
