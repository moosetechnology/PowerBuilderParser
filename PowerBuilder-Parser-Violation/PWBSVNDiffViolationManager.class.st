Class {
	#name : #PWBSVNDiffViolationManager,
	#superclass : #Object,
	#instVars : [
		'head',
		'prev',
		'stream',
		'repoName',
		'headAuthor',
		'prevAuthor'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager class >> prev: aPrevViolations head: aHeadViolations [
	^ self new prev: aPrevViolations head: aHeadViolations
]

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager >> diffBetween: aCollection1 and: aCollection2 [
	^ aCollection1
		select: [ :violation | 
			aCollection2
				allSatisfy:
					[ :each | (violation isSameAs: each) not or: [ violation isReportCrossCommitViolation ] ] ]
]

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager >> diffHeadPrev [
	^ self diffBetween: self head and: self prev
]

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager >> existViolations: diffHeadPrev [
	^ diffHeadPrev isNotEmpty
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> head [
	^ head
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> head: anObject [
	head := anObject
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> headAuthor: aString [ 
	headAuthor := aString
]

{ #category : #initialization }
PWBSVNDiffViolationManager >> initialize [
	super initialize.
	stream := WriteStream on: String new
]

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager >> isAuthorFixViolations: diffPrevHead [
	^ diffPrevHead isNotEmpty and: [ prevAuthor = headAuthor ]
]

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager >> prepareEncouragmentReport: aCollection with: anInteger [
	stream
		<<
			'<h1>Bravo !! :) </h1><br/>
		Vous avez corrigé ';
		<< anInteger asString;
		<< ' violations dans la version ';
		<< repoName;
		<< '. <br/>'.
	aCollection
		ifNotEmpty: [ stream << 'Neamoins il reste d''autres violations.<br/>'.
			aCollection do: [ :violation | violation reportOn: stream ].
			stream << '</ul>' ]
]

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager >> prepareViolationReport: aCollection [
	stream
		<< '<p>';
		<< self violationContext.
	aCollection do: [ :violation | violation reportOn: stream ].
	stream << '</ul></p>'
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> prev [
	^ prev
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> prev: anObject [
	prev := anObject
]

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager >> prev: aPrevViolations head: aHeadViolations [
	prev := aPrevViolations.
	head := aHeadViolations
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> prevAuthor: aString [
	prevAuthor := aString
]

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager >> publishDiff [
	| diffHeadPrev diffPrevHead |
	diffHeadPrev := self diffBetween: self head and: self prev.
	diffPrevHead := self diffBetween: self prev and: self head.
	self reportViolation: diffHeadPrev withFixed: diffPrevHead
]

{ #category : #running }
PWBSVNDiffViolationManager >> recipientList [
	| recipientList authorMail |
	authorMail := headAuthor , '@sa-cim.fr'.
	recipientList := {'Jerome.Sudich@sa-cim.fr'.
	'fatiha.Djareddir@sa-cim.fr'.
	'MahugnonHonore.Houekpetodji@sa-cim.fr'.
	authorMail}.
	^ recipientList
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> repoName [
	^ repoName
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> repoName: aString [
	repoName := aString
]

{ #category : #running }
PWBSVNDiffViolationManager >> reportViolation: violations [
	self prepareViolationReport: violations.
	self sendMailMessageToCommitAuthor
]

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager >> reportViolation: diffHeadPrev withFixed: diffPrevHead [
	(self existViolations: diffHeadPrev)
		ifTrue: [ (self isAuthorFixViolations: diffPrevHead)
				ifTrue:
					[ self prepareEncouragmentReport: diffHeadPrev with: diffPrevHead size ]
				ifFalse: [ self prepareViolationReport: diffHeadPrev ] ]
		ifFalse: [ (self isAuthorFixViolations: diffPrevHead)
				ifTrue: [ stream
						<<
							'<h1>Falicitation <span font-size: 100px;>&#128079;&#127997;</span><span>&#128076;&#127998;</span> </h1>';
						<< '<br/>';
						<< '<p>Vous avez fixé toutes les violations</p>' ] ].
	self sendMailMessageToCommitAuthor
]

{ #category : #running }
PWBSVNDiffViolationManager >> sendMailMessageToCommitAuthor [
	| mailMessage |
	mailMessage := MailMessage empty
		from: 'pwbcritics@gmail.com';
		date: DateAndTime now asEmailString;
		subject: 'PWB Critics violation';
		to: self recipientList;
		addAlternativePart: self stream contentType: 'text/html'.
	ZdcSecureSMTPClient
		sendPWBCriticsUsingGMailAccountPassword: '8v$oPDA0cA'
		to: self recipientList
		message: mailMessage
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> stream [
	^ stream contents
]

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager >> violationContext [
	^ 'Dans le but d''améliorer le code Protect, on a décider de supprimer progressivement les 9999 sur find ou rowscopy ainsi que tout ce qui ne respecte pas les normes de developpement instaurées dans l''équipe. Dans cette optique, je vous rapporte les violations suivantes sur la version '
		, repoName , ':'
]
