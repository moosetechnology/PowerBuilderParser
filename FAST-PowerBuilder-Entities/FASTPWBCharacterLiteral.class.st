"
A character in PWB code
"
Class {
	#name : #FASTPWBCharacterLiteral,
	#superclass : #FASTPWBLiteral,
	#category : #'FAST-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FASTPWBCharacterLiteral class >> annotation [

	<FMClass: #CharacterLiteral super: #FASTPWBLiteral>
	<package: #'FAST-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #visiting }
FASTPWBCharacterLiteral >> accept: aVisitor [
	^aVisitor visitCharacterLiteral: self
]
