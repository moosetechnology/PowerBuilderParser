Class {
	#name : #PWBSVNManager,
	#superclass : #SpPresenter,
	#instVars : [
		'repoUrl',
		'diff',
		'lines',
		'svnHead',
		'svnHeadAuthor',
		'svnHeadDate',
		'repoUrlTextInput',
		'svnPrev'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #specs }
PWBSVNManager class >> defaultSpec [
	^ SpBoxLayout newVertical
		add: #repoUrlTextInput;
		yourself
]

{ #category : #running }
PWBSVNManager class >> run [
	<example>
	^ self new openWithSpec
]

{ #category : #running }
PWBSVNManager class >> run: aSVNRepoURL [
	self new
		repoUrl: aSVNRepoURL;
		run
]

{ #category : #running }
PWBSVNManager class >> updateData: aBuilder [
	<worldMenu>
	(aBuilder item: #RunPWBViolations)
		parent: #PWBTools;
		help: 'Launch process to alert on new violations on last commit';
		label: 'RunPWBViolations';
		action: [ self run ]
]

{ #category : #'as yet unclassified' }
PWBSVNManager >> cleanUp [
	(FileSystem workingDirectory / ('svnPrev' , self repoName))
		ensureDeleteAll.
		(FileSystem workingDirectory / ('svnHead' , self repoName))
		ensureDeleteAll.
		
]

{ #category : #'as yet unclassified' }
PWBSVNManager >> diffFilesUrls [
	diff := LibC
		resultOfCommand:
			'svn diff -r ' , svnPrev asString , ':' , svnHead asString
				, String space , repoUrl , ' --summarize'.
	lines := diff lines asOrderedCollection
		reject: [ :line | 
			(line beginsWith: 'D')
				or: [ {'.pbl' . '.pbd' . '.pbg' . 'pbt' . '.srd' . '.sra'. '.opt'}
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
		rev: svnPrev
		dest: (self ensureCreateDirStructure: 'svnPrev' , self repoName) pathString.
	self
		downloadFiles: diffFiles
		rev: svnHead
		dest: (self ensureCreateDirStructure: 'svnHead' , self repoName) pathString
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
PWBSVNManager >> getSvnInfo [
	| info |
	info := (XMLDOMParser
		parse: (LibC resultOfCommand: 'svn log ' , repoUrl , ' --limit 2 --xml'))
		document descendantElementsDetect: [ :xmlElt | xmlElt name = 'log' ].
	svnHead := (info firstElement attributeNodeAt: 'revision') value
		asInteger.
	svnHeadAuthor := (info firstElement
		descendantElementsDetect: [ :xmlElt | xmlElt name = 'author' ])
		nodes anyOne asString.
	svnHeadDate := (info firstElement
		descendantElementsDetect: [ :xmlElt | xmlElt name = 'date' ]) nodes
		anyOne asString asDateAndTime.
	svnPrev := (info lastElement attributeNodeAt: 'revision') value
		asInteger
]

{ #category : #initialization }
PWBSVNManager >> initialize [
	super initialize.
	repoUrl := 'https://CIM-SVN.SA-CIM.local/svn/TestCI/'
]

{ #category : #initialization }
PWBSVNManager >> initializePresenters [
	repoUrlTextInput := self instantiate: SpLabelledTextInput.
	repoUrlTextInput acceptOnCR: true.
	repoUrlTextInput
		label: 'SVN repository URL:';
		whenTextIsAccepted: [ self repoUrl: repoUrlTextInput text.
			self isValidRepoUrl
				ifTrue: [ self window close.
					self run ]
				ifFalse: [ repoUrlTextInput subwidget color: Color red ] ]
]

{ #category : #initialization }
PWBSVNManager >> initializeWindow: aWindowPresenter [

	aWindowPresenter 
		title: 'PWB Violation Manager';
		initialExtent: 500@100
]

{ #category : #initialization }
PWBSVNManager >> isValidRepoUrl [
	^ repoUrl beginsWith: 'https://'
]

{ #category : #'as yet unclassified' }
PWBSVNManager >> repoName [
	"https://CIM-SVN.SA-CIM.local/svn/TestCI>>TestCI"
	^ ('/' split: repoUrl) last
]

{ #category : #accessors }
PWBSVNManager >> repoUrl [
	^ repoUrl
]

{ #category : #accessing }
PWBSVNManager >> repoUrl: aSVNRepoURL [
	repoUrl := (aSVNRepoURL endsWith: '/')
		ifTrue: [ aSVNRepoURL copyFrom: 1 to: aSVNRepoURL size - 1 ]
		ifFalse: [ aSVNRepoURL ]
]

{ #category : #'as yet unclassified' }
PWBSVNManager >> run [
	| lastHead |
	[ [ true ]
		whileTrue: [ lastHead := svnHead.
			self getSvnInfo.
			svnHead = lastHead
				ifFalse: [ self runViolations ].
			(Duration minutes: 5) asDelay wait ] ]
		forkNamed: 'ViolationRunner' , self repoName
]

{ #category : #'as yet unclassified' }
PWBSVNManager >> runViolations [
	self downloadDiffFilesForHeadAndPrev.
	(PWBSVNDiffViolationManager
		prev:
		(ViolationRunner
		importFromFolder: FileSystem workingDirectory / ('svnPrev' , self repoName))
		violations
		head:
		(ViolationRunner
				importFromFolder: FileSystem workingDirectory / ('svnHead' , self repoName))
				violations)
		author: svnHeadAuthor;
		repoName: self repoName;
		publishDiff.
	self cleanUp
]
