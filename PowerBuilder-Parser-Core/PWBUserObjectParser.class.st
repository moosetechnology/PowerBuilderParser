"
I am a parser to parse .sru powerbuilder files (User object files) and .srw powerbuilder files (Window files)
"
Class {
	#name : #PWBUserObjectParser,
	#superclass : #PWBAbstractParser,
	#instVars : [
		'typeDeclaration',
		'withinClause',
		'fromClause',
		'attributes',
		'attribute',
		'triggerDefinition',
		'endForward',
		'globalVariableDeclaration',
		'eventAttribute'
	],
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #parsing }
PWBUserObjectParser class >> supportedExtensions [
	^ {'sru' . 'srw'}
]

{ #category : #accessing }
PWBUserObjectParser >> assignationStatement [ 
	^ super assignationStatement 
]

{ #category : #accessing }
PWBUserObjectParser >> attribute [
	^ type, blank, identifier, assignation optional
]

{ #category : #accessing }
PWBUserObjectParser >> attributes [
	^ (eventAttribute / attribute separatedBy: blank) , blank
]

{ #category : #accessing }
PWBUserObjectParser >> callStatement [ 
	^ super callStatement 
]

{ #category : #accessing }
PWBUserObjectParser >> endForward [ 
	^ 'end forward' parser
]

{ #category : #accessing }
PWBUserObjectParser >> eventAttribute [
	^ 'event' parser , blank , type , blank , (arguments / variable)
]

{ #category : #accessing }
PWBUserObjectParser >> file [
	^ typeDeclaration / endForward / globalVariableDeclaration separatedBy: blank
]

{ #category : #accessing }
PWBUserObjectParser >> fromClause [
	^ 'from' parser , blank , customType , blank
]

{ #category : #accessing }
PWBUserObjectParser >> globalVariableDeclaration [
	^ 'global' parser , blank , type , blank , variable
]

{ #category : #accessing }
PWBUserObjectParser >> triggerDefinition [
	^ 'on' parser , blank , identifier , $. parser , eventType , blank , statements , blank
		, 'end on' parser
]

{ #category : #accessing }
PWBUserObjectParser >> typeDeclaration [
	^ ('global' parser , blank) parser optional , 'type' parser , blank , customType , blank
		, 'enumerated' parser trim optional , fromClause , withinClause optional
		, attributes optional , 'end type' parser
]

{ #category : #accessing }
PWBUserObjectParser >> withinClause [
	^ 'within' parser , blank , customType , blank
]
