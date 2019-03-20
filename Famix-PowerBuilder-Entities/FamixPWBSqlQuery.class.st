Class {
	#name : #FamixPWBSqlQuery,
	#superclass : #MooseEntity,
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBSqlQuery class >> annotation [

	<MSEClass: #SqlQuery super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixPWBSqlQuery class >> generatedSlotNames [
	<generated>
	'FamixPWBSqlQuery class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBSqlQuery class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FamixPWBSqlQuery class >> metamodel [

	<generated>
	^ (self class environment at: #PWBFamixModelGenerator) metamodel
]

{ #category : #meta }
FamixPWBSqlQuery class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FamixPWBSqlQuery >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBSqlQuery >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBSqlQuery >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBSqlQuery >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBSqlQuery >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBSqlQuery >> isInheritance [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBSqlQuery >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBSqlQuery >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBSqlQuery >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBSqlQuery >> isPackage [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBSqlQuery >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBSqlQuery >> isType [

	<generated>
	^ false
]
