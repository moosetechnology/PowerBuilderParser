"
Represents an expression with dot: something.member.
Member can be an attribute access or a function invocation
"
Class {
	#name : #FASTPWBDottedExpression,
	#superclass : #FASTPWBExpression,
	#instVars : [
		'#majorObject => FMOne type: #FASTPWBExpression opposite: #parentExpression',
		'#member => FMOne type: #FASTPWBExpression opposite: #parentExpression'
	],
	#category : #'FAST-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FASTPWBDottedExpression class >> annotation [

	<FMClass: #DottedExpression super: #FASTPWBExpression>
	<package: #'FAST-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FASTPWBDottedExpression >> majorObject [
	"Relation named: #majorObject type: #FASTPWBExpression opposite: #parentExpression"

	<generated>
	<FMComment: 'The object whose member is accessed (left side of the dottedExpression)'>
	^ majorObject
]

{ #category : #accessing }
FASTPWBDottedExpression >> majorObject: anObject [

	<generated>
	majorObject := anObject
]

{ #category : #navigation }
FASTPWBDottedExpression >> majorObjectGroup [
	<generated>
	<navigation: 'MajorObject'>
	^ MooseSpecializedGroup with: self majorObject
]

{ #category : #accessing }
FASTPWBDottedExpression >> member [
	"Relation named: #member type: #FASTPWBExpression opposite: #parentExpression"

	<generated>
	<FMComment: 'The member accessed (right side of the dottedExpression)'>
	^ member
]

{ #category : #accessing }
FASTPWBDottedExpression >> member: anObject [

	<generated>
	member := anObject
]

{ #category : #navigation }
FASTPWBDottedExpression >> memberGroup [
	<generated>
	<navigation: 'Member'>
	^ MooseSpecializedGroup with: self member
]
