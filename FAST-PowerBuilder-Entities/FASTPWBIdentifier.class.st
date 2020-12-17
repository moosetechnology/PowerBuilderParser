"
Represents an idenfier (presumably a variable) used (i.e. accessed) in the source code
"
Class {
	#name : #FASTPWBIdentifier,
	#superclass : #FASTPWBEntity,
	#instVars : [
		'#name => FMProperty',
		'#parentAccess => FMOne type: #FASTPWBAccess opposite: #identifier',
		'#parentExpression => FMOne type: #FASTPWBFunctionInvocation opposite: #identifier'
	],
	#category : #'FAST-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FASTPWBIdentifier class >> annotation [

	<FMClass: #Identifier super: #FASTPWBEntity>
	<package: #'FAST-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #visiting }
FASTPWBIdentifier >> accept: aVisitor [
	^aVisitor visitIdentifier: self
]

{ #category : #accessing }
FASTPWBIdentifier >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
FASTPWBIdentifier >> name: anObject [
	<generated>
	name := anObject
]

{ #category : #accessing }
FASTPWBIdentifier >> parentAccess [
	"Relation named: #parentAccess type: #FASTPWBAccess opposite: #identifier"

	<generated>
	<FMComment: 'The use of this identifier'>
	<container>
	<derived>
	^ parentAccess
]

{ #category : #accessing }
FASTPWBIdentifier >> parentAccess: anObject [

	<generated>
	parentAccess := anObject
]

{ #category : #navigation }
FASTPWBIdentifier >> parentAccessGroup [
	<generated>
	<navigation: 'ParentAccess'>
	^ MooseSpecializedGroup with: self parentAccess
]

{ #category : #accessing }
FASTPWBIdentifier >> parentExpression [
	"Relation named: #parentExpression type: #FASTPWBFunctionInvocation opposite: #identifier"

	<generated>
	<container>
	<derived>
	^ parentExpression
]

{ #category : #accessing }
FASTPWBIdentifier >> parentExpression: anObject [

	<generated>
	parentExpression := anObject
]

{ #category : #navigation }
FASTPWBIdentifier >> parentExpressionGroup [
	<generated>
	<navigation: 'ParentExpression'>
	^ MooseSpecializedGroup with: self parentExpression
]
