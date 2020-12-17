"
An integer literal
"
Class {
	#name : #FASTPWBIntegerLiteral,
	#superclass : #FASTLiteral,
	#category : #'FAST-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FASTPWBIntegerLiteral class >> annotation [

	<FMClass: #IntegerLiteral super: #FASTLiteral>
	<package: #'FAST-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #visiting }
FASTPWBIntegerLiteral >> accept: aVisitor [
	^aVisitor visitIntegerLiteral: self
]
