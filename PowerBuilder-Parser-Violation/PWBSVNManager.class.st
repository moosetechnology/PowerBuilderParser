Class {
	#name : #PWBSVNManager,
	#superclass : #Object,
	#instVars : [
		'repoUrl',
		'diff',
		'lines'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBSVNManager >> computeDiff [
	| head prev |
	head := self getSvnHEADNumber.
	prev := head - 1.
	diff := LibC
		resultOfCommand:
			'svn diff -r ' , prev asString , ':' , head asString , String space
				, repoUrl , ' --summarize'.
	lines := diff lines asOrderedCollection
		collect: [ :e | e copyFrom: 9 to: e size ].
	^ lines
]

{ #category : #'as yet unclassified' }
PWBSVNManager >> downloadLastestModifiedFiles [
	| dest |
	dest := FileSystem workingDirectory / 'svnChanges'.
	dest ensureDeleteAll.
	dest ensureCreateDirectory.
	self computeDiff
		do: [ :file | 
			| command |
			command := 'svn export ' , file , String space , dest pathString.
			LibC resultOfCommand: command ]
]

{ #category : #'as yet unclassified' }
PWBSVNManager >> getSvnHEADNumber [
	| info |
	info := LibC resultOfCommand: 'svn info ' , repoUrl , ' --xml'.
	^ (((XMLDOMParser parse: info) document
		descendantElementsDetect: [ :xmlElt | xmlElt name = 'commit' ])
		attributeNodeAt: 'revision') value asInteger
]

{ #category : #initialization }
PWBSVNManager >> initialize [
	super initialize.
	repoUrl := 'https://CIM-SVN.SA-CIM.local/svn/IzyProtect_Production/'
]
