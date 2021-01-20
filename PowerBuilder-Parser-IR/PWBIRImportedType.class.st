Class {
	#name : #PWBIRImportedType,
	#superclass : #PWBIRType,
	#instVars : [
		'importedType'
	],
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #accessing }
PWBIRImportedType >> expectedFamixKinds [
	expectedFamixKinds ifNotNil: [ ^expectedFamixKinds ].
	importedType ifNotNil: [ ^importedType expectedFamixKinds ].
	^self class defaultFamixClasses
]

{ #category : #accessing }
PWBIRImportedType >> importedType [
	^ importedType
]

{ #category : #accessing }
PWBIRImportedType >> importedType: anObject [
	importedType := anObject
]

{ #category : #accessing }
PWBIRImportedType >> reachableEntities [
	^super reachableEntities
		union: (self importedType 
			ifNil: [ #() ]
			ifNotNil: [ importedType reachableEntities ])
]
