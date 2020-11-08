Class {
	#name : #PWBPBGFileGrammar,
	#superclass : #PWBAbstractGrammar,
	#instVars : [
		'saveFormat',
		'pbgFile',
		'pbgLine',
		'pbgLines',
		'pblObjectName',
		'libraryName',
		'libraryDeclaration',
		'pbgObjectsDeclaration',
		'end'
	],
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #parsing }
PWBPBGFileGrammar class >> supportedExtensions [
	^ {'.pbg'}
]

{ #category : #'as yet unclassified' }
PWBPBGFileGrammar >> begin [
	^ $@ parser , 'begin' token
]

{ #category : #'as yet unclassified' }
PWBPBGFileGrammar >> begin: aReservedWord [
	^ $@ parser , 'begin' token , spaces , aReservedWord token
]

{ #category : #'as yet unclassified' }
PWBPBGFileGrammar >> end [
	^ $@ parser , 'end' token,$; parser 
]

{ #category : #accessing }
PWBPBGFileGrammar >> file [
	<rename: #pbgFile into: #content>
	^ pbgFile
]

{ #category : #'as yet unclassified' }
PWBPBGFileGrammar >> libraryDeclaration [
	^ (self begin: 'libraries') , blank , pbgLine , blank , end
]

{ #category : #'as yet unclassified' }
PWBPBGFileGrammar >> libraryName [
	^ string
]

{ #category : #rules }
PWBPBGFileGrammar >> pbgFile [
	^ saveFormat,blank ,libraryDeclaration,blank , pbgObjectsDeclaration
]

{ #category : #'as yet unclassified' }
PWBPBGFileGrammar >> pbgLine [
	^ pblObjectName , spaces , libraryName , $; parser
]

{ #category : #'as yet unclassified' }
PWBPBGFileGrammar >> pbgLines [
	^ pbgLine separatedBy: blank
]

{ #category : #rule }
PWBPBGFileGrammar >> pbgObjectsDeclaration [
	^ (self begin: 'Objects') , blank , pbgLines , blank , end
]

{ #category : #'as yet unclassified' }
PWBPBGFileGrammar >> pblObjectName [
	^ string
]

{ #category : #'as yet unclassified' }
PWBPBGFileGrammar >> saveFormat [
	^ 'save' token , spaces , 'format' token , spaces , identifier, $. parser ,number ,
	 parenthesedExpression
]
