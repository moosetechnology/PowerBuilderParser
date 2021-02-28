Class {
	#name : #FamixPWBInvocation,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTHasSignature + FamixTInvocation + FamixTSourceEntity',
	#classTraits : 'FamixTHasSignature classTrait + FamixTInvocation classTrait + FamixTSourceEntity classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBInvocation class >> annotation [

	<FMClass: #Invocation super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #printing }
FamixPWBInvocation >> printOn: aStream [
	^ aStream << self candidates anyOne name
]

{ #category : #accessing }
FamixPWBInvocation >> resetArguments [
	self arguments: (QueryInvocationArguments runOn: self)
]
