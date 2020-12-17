"
Represents an expression, i.e. something that has a value (a literal, a variable, an arithmetic expression, a function call, ...)
"
Class {
	#name : #FASTPWBExpression,
	#superclass : #FASTExpression,
	#instVars : [
		'#expression => FMOne type: #FASTPWBExpression opposite: #parentExpression',
		'#parentExpression => FMOne type: #FASTPWBExpression opposite: #expression'
	],
	#category : #'FAST-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FASTPWBExpression class >> annotation [

	<FMClass: #Expression super: #FASTExpression>
	<package: #'FAST-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FASTPWBExpression >> expression [
	"Relation named: #expression type: #FASTPWBExpression opposite: #parentExpression"

	<generated>
	<derived>
	^ expression
]

{ #category : #accessing }
FASTPWBExpression >> expression: anObject [

	<generated>
	expression := anObject
]

{ #category : #navigation }
FASTPWBExpression >> expressionGroup [
	<generated>
	<navigation: 'Expression'>
	^ MooseSpecializedGroup with: self expression
]

{ #category : #accessing }
FASTPWBExpression >> parentExpression [
	"Relation named: #parentExpression type: #FASTPWBExpression opposite: #expression"

	<generated>
	<FMComment: 'The parentExpression (if any) owning this Expression'>
	<container>
	^ parentExpression
]

{ #category : #accessing }
FASTPWBExpression >> parentExpression: anObject [

	<generated>
	parentExpression := anObject
]

{ #category : #navigation }
FASTPWBExpression >> parentExpressionGroup [
	<generated>
	<navigation: 'ParentExpression'>
	^ MooseSpecializedGroup with: self parentExpression
]
