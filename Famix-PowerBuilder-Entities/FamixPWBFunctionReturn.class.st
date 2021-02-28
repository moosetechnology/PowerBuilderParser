Class {
	#name : #FamixPWBFunctionReturn,
	#superclass : #FamixPWBEntity,
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBFunctionReturn class >> annotation [

	<FMClass: #FunctionReturn super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixPWBFunctionReturn >> updateType [
	type := self behavioral returnType
]
