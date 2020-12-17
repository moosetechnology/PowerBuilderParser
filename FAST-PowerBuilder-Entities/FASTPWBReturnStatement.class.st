"
Node representing a return statement in PWB
"
Class {
	#name : #FASTPWBReturnStatement,
	#superclass : #FASTReturnStatement,
	#category : #'FAST-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FASTPWBReturnStatement class >> annotation [

	<FMClass: #ReturnStatement super: #FASTReturnStatement>
	<package: #'FAST-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #visiting }
FASTPWBReturnStatement >> accept: aVisitor [
	^aVisitor visitReturnStatement: self
]
