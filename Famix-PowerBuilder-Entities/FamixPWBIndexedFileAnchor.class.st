Class {
	#name : #FamixPWBIndexedFileAnchor,
	#superclass : #FamixPWBAbstractFileAnchor,
	#traits : 'FamixTIndexedFileNavigation',
	#classTraits : 'FamixTIndexedFileNavigation classTrait',
	#instVars : [
		'#dpFlag'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBIndexedFileAnchor class >> annotation [

	<FMClass: #IndexedFileAnchor super: #FamixPWBAbstractFileAnchor>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #'as yet unclassified' }
FamixPWBIndexedFileAnchor >> dpFileName [
	^ self fileName copyReplaceAll: 'cleaned' with: 'dpcleaned'
]

{ #category : #accessing }
FamixPWBIndexedFileAnchor >> dpFileReference [
	^ self rootFolder asFileReference resolve: self dpFileName
]

{ #category : #private }
FamixPWBIndexedFileAnchor >> dpSourceText [
	| start |
	self sourcesAreReadable
		ifFalse: [ ^ '' ].
	start := startPos ifNil: [ 1 ].
	^ self dpFileReference
		binaryReadStreamDo: [ :in | 
			| stream |
			stream := ZnCharacterReadStream on: in encoding: self encoding.
			1 to: start - 1 do: [ :i | stream next ].
			stream next: (endPos ifNil: [ in size + 1 ]) - start + 1 ]
]

{ #category : #accessing }
FamixPWBIndexedFileAnchor >> dpsourceText [
	self shouldBeImplemented.
]

{ #category : #accessing }
FamixPWBIndexedFileAnchor >> fileReference [
  ^self rootFolder asFileReference resolve: self fileName
]

{ #category : #private }
FamixPWBIndexedFileAnchor >> sourceText [
  | start |
  self sourcesAreReadable ifFalse: [ ^'' ].
  start := startPos ifNil: [ 1 ].
  ^self fileReference binaryReadStreamDo: [:in |  | stream |
        stream := ZnCharacterReadStream on: in encoding: self encoding.
        1 to: start - 1 do: [:i |  stream next ].
        stream next: (endPos ifNil: [ in size + 1 ]) - start + 1 ]
]
