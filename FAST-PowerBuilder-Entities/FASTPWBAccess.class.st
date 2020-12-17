"
Represents access to a variable
"
Class {
	#name : #FASTPWBAccess,
	#superclass : #FASTPWBExpression,
	#instVars : [
		'#identifier => FMOne type: #FASTPWBIdentifier opposite: #parentAccess'
	],
	#category : #'FAST-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FASTPWBAccess class >> annotation [

	<FMClass: #Access super: #FASTPWBExpression>
	<package: #'FAST-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FASTPWBAccess >> identifier [
	"Relation named: #identifier type: #FASTPWBIdentifier opposite: #parentAccess"

	<generated>
	<FMComment: 'The identifier of the accessed variable'>
	^ identifier
]

{ #category : #accessing }
FASTPWBAccess >> identifier: anObject [

	<generated>
	identifier := anObject
]

{ #category : #navigation }
FASTPWBAccess >> identifierGroup [
	<generated>
	<navigation: 'Identifier'>
	^ MooseSpecializedGroup with: self identifier
]
