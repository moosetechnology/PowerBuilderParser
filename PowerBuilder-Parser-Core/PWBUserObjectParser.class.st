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
		'eventType',
		'triggerDefinition'
	],
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #parsing }
PWBUserObjectParser class >> supportedExtensions [
	^ {'sru' . 'srw'}
]

{ #category : #accessing }
PWBUserObjectParser >> attribute [
	^ type, blank, identifier, assignation optional
]

{ #category : #accessing }
PWBUserObjectParser >> attributes [
	^ (attribute separatedBy: blank) , blank
]

{ #category : #accessing }
PWBUserObjectParser >> eventType [
	^ 'create' parser
]

{ #category : #accessing }
PWBUserObjectParser >> file [
	^ typeDeclaration separatedBy: blank
]

{ #category : #accessing }
PWBUserObjectParser >> fromClause [
	^ 'from' parser , blank , customType , blank
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
