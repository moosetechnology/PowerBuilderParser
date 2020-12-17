"
Represents the use of ""this"" in PowerBuilder
"
Class {
	#name : #FASTPWBImplicitVariable,
	#superclass : #FASTPWBIdentifier,
	#category : #'FAST-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FASTPWBImplicitVariable class >> annotation [

	<FMClass: #ImplicitVariable super: #FASTPWBIdentifier>
	<package: #'FAST-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #visiting }
FASTPWBImplicitVariable >> accept: aVisitor [
	^aVisitor visitImplicitVariable: self
]
