Class {
	#name : #PWBSVNManager,
	#superclass : #Object,
	#instVars : [
		'repoUrl',
		'diff',
		'lines',
		'svnHead'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBSVNManager >> diffFilesUrls [
	| head prev |
	head := self getSvnHEADNumber.
	prev := head - 1.
	diff := LibC
		resultOfCommand:
			'svn diff -r ' , prev asString , ':' , head asString , String space
				, repoUrl , ' --summarize'.
	lines := diff lines asOrderedCollection
		reject: [ :line | 
			(line beginsWith: 'D')
				or: [ {'.pbl' . '.pbd' . '.pbg' . 'pbt' . '.srd' . '.sra'}
						anySatisfy: [ :extension | line endsWith: extension ] ] ]
		thenCollect: [ :e | e copyFrom: 9 to: e size ].
	^ lines
]

{ #category : #'as yet unclassified' }
PWBSVNManager >> downloadDiffFilesForHeadAndPrev [
	| diffFiles |
	diffFiles := self diffFilesUrls.
	self
		downloadFiles: diffFiles
		rev: svnHead - 1
		dest: (self ensureCreateDirStructure: 'svnPrev') pathString.
	self
		downloadFiles: diffFiles
		rev: svnHead
		dest: (self ensureCreateDirStructure: 'svnHead') pathString
]

{ #category : #'as yet unclassified' }
PWBSVNManager >> downloadFiles: diffFiles rev: anInteger dest: aString [
	diffFiles
		do: [ :file | 
			| command |
			command := 'svn export -r ' , anInteger asString , String space
				, file , String space , aString.
			LibC resultOfCommand: command ]
]

{ #category : #'as yet unclassified' }
PWBSVNManager >> ensureCreateDirStructure: aString [
	| dest |
	(FileSystem workingDirectory / aString) ensureDeleteAll.
	(FileSystem workingDirectory / aString) ensureCreateDirectory.
	dest := FileSystem workingDirectory / aString / 'lib'.
	^ dest ensureCreateDirectory
]

{ #category : #'as yet unclassified' }
PWBSVNManager >> getSvnHEADNumber [
	| info |
	info := LibC resultOfCommand: 'svn info ' , repoUrl , ' --xml'.
	svnHead := (((XMLDOMParser parse: info) document
		descendantElementsDetect: [ :xmlElt | xmlElt name = 'commit' ])
		attributeNodeAt: 'revision') value asInteger.
	^ svnHead
]

{ #category : #initialization }
PWBSVNManager >> initialize [
	super initialize.
	repoUrl := 'https://CIM-SVN.SA-CIM.local/svn/TestCI/'
]

{ #category : #'as yet unclassified' }
PWBSVNManager >> runViolations [
	self downloadDiffFilesForHeadAndPrev.
	^ (PWBSVNDiffViolationManager
		prev:
			(ViolationRunner
				importFromFolder: FileSystem workingDirectory / 'svnPrev')
				violations
		head:
			(ViolationRunner
				importFromFolder: FileSystem workingDirectory / 'svnHead')
				violations) publishDiff
]
