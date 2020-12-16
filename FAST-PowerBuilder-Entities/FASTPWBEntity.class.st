Class {
	#name : #FASTPWBEntity,
	#superclass : #MooseEntity,
	#category : #'FAST-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FASTPWBEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'FAST-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FASTPWBEntity class >> metamodel [

	<generated>
	^ FASTPWBModel metamodel
]
