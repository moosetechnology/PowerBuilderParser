"
A literal in PWB code
"
Class {
	#name : #FASTPWBLiteral,
	#superclass : #FASTPWBExpression,
	#instVars : [
		'#value => FMProperty'
	],
	#category : #'FAST-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FASTPWBLiteral class >> annotation [

	<FMClass: #Literal super: #FASTPWBExpression>
	<package: #'FAST-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FASTPWBLiteral >> value [

	<FMProperty: #value type: #String>
	<generated>
	^ value
]

{ #category : #accessing }
FASTPWBLiteral >> value: anObject [
	<generated>
	value := anObject
]
