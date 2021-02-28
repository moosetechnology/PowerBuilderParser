Class {
	#name : #FamixPWBVariable,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTStructuralEntity',
	#classTraits : 'FamixTStructuralEntity classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBVariable class >> annotation [

	<FMClass: #Variable super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixPWBVariable class >> isDeprecated [
	"TNamed was renamed #TNamedEntity. You should update your generator."

	^ false
]

{ #category : #accessing }
FamixPWBVariable >> accessAssociation [
	self flag: #REMOVEME .
	^ FamixPWBVariableAccess
]

{ #category : #testing }
FamixPWBVariable >> isInstanceVariable [
	^ false
]

{ #category : #api }
FamixPWBVariable >> reachableEntities [
	^ {}
]
