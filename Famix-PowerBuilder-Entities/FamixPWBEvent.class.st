Class {
	#name : #FamixPWBEvent,
	#superclass : #FamixPWBRoutine,
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBEvent class >> annotation [

	<FMClass: #Event super: #FamixPWBRoutine>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixPWBEvent >> isEvent [
	^ true
]

{ #category : #accessing }
FamixPWBEvent >> returnType [
	^ nil
]
