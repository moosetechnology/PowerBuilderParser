Class {
	#name : #FamixPWBIndexedFileAnchor,
	#superclass : #FamixPWBAbstractFileAnchor,
	#traits : 'FamixTIndexedFileNavigation',
	#classTraits : 'FamixTIndexedFileNavigation classTrait',
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBIndexedFileAnchor class >> annotation [

	<FMClass: #IndexedFileAnchor super: #FamixPWBAbstractFileAnchor>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixPWBIndexedFileAnchor >> fileName [
  < FMProperty: #fileName type: #String>
  < generated>
  < FMComment: 'Name of the source file'>
  ^fileName
  "copyReplaceAll: '/cleaned' with: ''"
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
