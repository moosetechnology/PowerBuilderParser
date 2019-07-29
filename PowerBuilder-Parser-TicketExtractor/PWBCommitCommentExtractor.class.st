Class {
	#name : #PWBCommitCommentExtractor,
	#superclass : #Object,
	#category : #'PowerBuilder-Parser-TicketExtractor'
}

{ #category : #'as yet unclassified' }
PWBCommitCommentExtractor class >> extractCommitCommentFromFolder: aFolder inModel: mooseModel [
	| aFolderReference |
	aFolderReference := aFolder asFileReference.
	aFolderReference directories
		do: [ :dir | 
			| library |
			library := (mooseModel allWithType: FamixPWBLibrary)
				entityNamed: dir basename.
			self extractCommitsInLibrary: library fromFolder: dir ]
		displayingProgress: [ :dir | dir asString ].
	^ mooseModel
]

{ #category : #'as yet unclassified' }
PWBCommitCommentExtractor class >> extractCommitsInLibrary: aLibrary fromFolder: aFolder [
	(aFolder files
		reject: [ :aFile | #(pbg srj DS_Store) includes: aFile extension ])
		do: [ :aFile | 
			aFile size = 0
				ifFalse: [ aLibrary userObjects
						detect: [ :aMajorObject | aMajorObject name = aFile basenameWithoutExtension ]
						ifFound: [ :majorObject | 
							(PWBCommitCommentExtractorParser new parse: aFile contents)
								acceptVisitor:
									(PWBTicketASTCreatorVisitor new
										majorObject: majorObject;
										yourself) ]
						ifNone: [  ] ] ]
		displayingProgress: [ :aFile | aFile asString ]
]
