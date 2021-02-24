Class {
	#name : #PWBSVNDiffViolationManager,
	#superclass : #Object,
	#instVars : [
		'head',
		'prev',
		'stream',
		'author',
		'repoName'
	],
	#category : #'PowerBuilder-Parser-Violation'
}

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager class >> prev: aPrevViolations head: aHeadViolations [
	^ self new prev: aPrevViolations head: aHeadViolations
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> author: aString [ 
	author := aString
]

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager >> diffHeadPrev [
	^ self head
		select: [ :violation | 
			self prev
				allSatisfy:
					[ :each | (violation isSameAs: each) not or: [ violation isReportCrossCommitViolation ] ] ]
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> head [
	^ head
]

{ #category : #accessing }
PWBSVNDiffViolationManager >> head: anObject [
	head := anObject
]

{ #category : #initialization }
PWBSVNDiffViolationManager >> initialize [
	super initialize.
	stream := WriteStream on: String new
]

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager >> prepareReport: aCollection [
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

{ #category : #'as yet unclassified' }
PWBSVNDiffViolationManager >> publishDiff [
	| diff |
	diff := self diffHeadPrev.
	diff ifNotEmpty: [ self reportViolation: diff ]
]

{ #category : #running }
PWBSVNDiffViolationManager >> recipientList [
	| recipientList authorMail |
	authorMail := author , '@sa-cim.fr'.
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
	| mailMessage |
	self prepareReport: violations.
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
	^ 'Dans le but d''ameliorer le code Protect, on a decider de supprimer progressivement les 9999 sur find ou rowscopy ainsi que tout ce qui ne respecte pas les normes de developpement instaurees dans l''equipe. Dans cette optique, je vous rapporte les violations suivantes sur la version '
		, repoName , ':'
]
