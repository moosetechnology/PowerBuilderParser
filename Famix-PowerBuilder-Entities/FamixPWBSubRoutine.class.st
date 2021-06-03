Class {
	#name : #FamixPWBSubRoutine,
	#superclass : #FamixPWBRoutine,
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBSubRoutine class >> annotation [

	<FMClass: #SubRoutine super: #FamixPWBRoutine>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixPWBSubRoutine >> isSubRoutine [
	^ true
]

{ #category : #printing }
FamixPWBSubRoutine >> mooseNameOn: stream [
	self parentType
		ifNotNil: [ :parent | 
			parent mooseNameOn: stream.
			stream nextPut: $. ].
	self signature
		ifNotNil: [ :aSignature | aSignature mooseNameOn: stream ]
		ifNil: [ self name ifNotNil: [ :aName | stream nextPutAll: aName ] ]
]

{ #category : #'As yet unclassified' }
FamixPWBSubRoutine >> returnType [
	^ nil
]
