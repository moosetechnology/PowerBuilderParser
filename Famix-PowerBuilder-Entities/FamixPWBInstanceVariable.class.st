Class {
	#name : #FamixPWBInstanceVariable,
	#superclass : #FamixPWBAttribute,
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBInstanceVariable class >> annotation [

	<FMClass: #InstanceVariable super: #FamixPWBAttribute>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #converting }
FamixPWBInstanceVariable >> asMrlArgument [
	^ MRLInvocationArgument new
		startPosition: self sourceAnchor startPosition;
		stopPosition: self sourceAnchor stopPosition;
		receiver: self parentTypes name;
		argumentName: self name
]
