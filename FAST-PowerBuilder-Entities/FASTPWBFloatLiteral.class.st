"
a Float Literal, ex: 12.3
"
Class {
	#name : #FASTPWBFloatLiteral,
	#superclass : #FASTPWBLiteral,
	#category : #'FAST-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FASTPWBFloatLiteral class >> annotation [

	<FMClass: #FloatLiteral super: #FASTPWBLiteral>
	<package: #'FAST-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #visiting }
FASTPWBFloatLiteral >> accept: aVisitor [
	^aVisitor visitFloatLiteral: self
]
