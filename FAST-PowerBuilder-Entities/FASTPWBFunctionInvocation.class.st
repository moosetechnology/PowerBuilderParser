"
Represents an invocation (a call) of a PWB function
"
Class {
	#name : #FASTPWBFunctionInvocation,
	#superclass : #FASTPWBExpression,
	#instVars : [
		'#arguments => FMOne type: #FASTPWBExpression opposite: #parentExpression',
		'#identifier => FMOne type: #FASTPWBIdentifier opposite: #parentExpression'
	],
	#category : #'FAST-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FASTPWBFunctionInvocation class >> annotation [

	<FMClass: #FunctionInvocation super: #FASTPWBExpression>
	<package: #'FAST-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FASTPWBFunctionInvocation >> arguments [
	"Relation named: #arguments type: #FASTPWBExpression opposite: #parentExpression"

	<generated>
	<FMComment: 'The argument expressions of the invocation'>
	^ arguments
]

{ #category : #accessing }
FASTPWBFunctionInvocation >> arguments: anObject [

	<generated>
	arguments := anObject
]

{ #category : #navigation }
FASTPWBFunctionInvocation >> argumentsGroup [
	<generated>
	<navigation: 'Arguments'>
	^ MooseSpecializedGroup with: self arguments
]

{ #category : #accessing }
FASTPWBFunctionInvocation >> identifier [
	"Relation named: #identifier type: #FASTPWBIdentifier opposite: #parentExpression"

	<generated>
	<FMComment: 'The identifier of the invoked function'>
	^ identifier
]

{ #category : #accessing }
FASTPWBFunctionInvocation >> identifier: anObject [

	<generated>
	identifier := anObject
]

{ #category : #navigation }
FASTPWBFunctionInvocation >> identifierGroup [
	<generated>
	<navigation: 'Identifier'>
	^ MooseSpecializedGroup with: self identifier
]
