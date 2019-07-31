Class {
	#name : #FamixPWBImportingContext,
	#superclass : #FmxImportingContext,
	#category : #'Famix-PowerBuilder-Entities'
}

{ #category : #generator }
FamixPWBImportingContext class >> generatedSlotNames [
	<generated>
	'FamixPWBImportingContext class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixPWBImportingContext class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #testing }
FamixPWBImportingContext >> importAbstractFile [

	<generated>
	^ self import: FamixPWBAbstractFile
]

{ #category : #testing }
FamixPWBImportingContext >> importAbstractFileAnchor [

	<generated>
	^ self import: FamixPWBAbstractFileAnchor
]

{ #category : #testing }
FamixPWBImportingContext >> importAccess [

	<generated>
	^ self import: FamixPWBAccess
]

{ #category : #testing }
FamixPWBImportingContext >> importApplication [

	<generated>
	^ self import: FamixPWBApplication
]

{ #category : #testing }
FamixPWBImportingContext >> importAssociation [

	<generated>
	^ self import: FamixPWBAssociation
]

{ #category : #testing }
FamixPWBImportingContext >> importAttribute [

	<generated>
	^ self import: FamixPWBAttribute
]

{ #category : #testing }
FamixPWBImportingContext >> importBasicType [

	<generated>
	^ self import: FamixPWBBasicType
]

{ #category : #testing }
FamixPWBImportingContext >> importBehavioral [

	<generated>
	^ self import: FamixPWBBehavioral
]

{ #category : #testing }
FamixPWBImportingContext >> importComment [

	<generated>
	^ self import: FamixPWBComment
]

{ #category : #testing }
FamixPWBImportingContext >> importCustomType [

	<generated>
	^ self import: FamixPWBCustomType
]

{ #category : #testing }
FamixPWBImportingContext >> importDataWindow [

	<generated>
	^ self import: FamixPWBDataWindow
]

{ #category : #testing }
FamixPWBImportingContext >> importEntity [

	<generated>
	^ self import: FamixPWBEntity
]

{ #category : #testing }
FamixPWBImportingContext >> importEvent [

	<generated>
	^ self import: FamixPWBEvent
]

{ #category : #testing }
FamixPWBImportingContext >> importFile [

	<generated>
	^ self import: FamixPWBFile
]

{ #category : #testing }
FamixPWBImportingContext >> importFileAnchor [

	<generated>
	^ self import: FamixPWBFileAnchor
]

{ #category : #testing }
FamixPWBImportingContext >> importFolder [

	<generated>
	^ self import: FamixPWBFolder
]

{ #category : #testing }
FamixPWBImportingContext >> importFunction [

	<generated>
	^ self import: FamixPWBFunction
]

{ #category : #testing }
FamixPWBImportingContext >> importFunctionFile [

	<generated>
	^ self import: FamixPWBFunctionFile
]

{ #category : #testing }
FamixPWBImportingContext >> importGraphicComponent [

	<generated>
	^ self import: FamixPWBGraphicComponent
]

{ #category : #testing }
FamixPWBImportingContext >> importIndexedFileAnchor [

	<generated>
	^ self import: FamixPWBIndexedFileAnchor
]

{ #category : #testing }
FamixPWBImportingContext >> importInvocation [

	<generated>
	^ self import: FamixPWBInvocation
]

{ #category : #testing }
FamixPWBImportingContext >> importLibrary [

	<generated>
	^ self import: FamixPWBLibrary
]

{ #category : #testing }
FamixPWBImportingContext >> importMaximum [
	(self class methods
		select: [ :m | m selector beginsWith: #import ]
		thenCollect: #selector) \ #(importMaximum)
		do: [ :aSelector | self perform: aSelector ]
]

{ #category : #testing }
FamixPWBImportingContext >> importMenuObject [

	<generated>
	^ self import: FamixPWBMenuObject
]

{ #category : #testing }
FamixPWBImportingContext >> importMultipleFileAnchor [

	<generated>
	^ self import: FamixPWBMultipleFileAnchor
]

{ #category : #testing }
FamixPWBImportingContext >> importNamedEntity [

	<generated>
	^ self import: FamixPWBNamedEntity
]

{ #category : #testing }
FamixPWBImportingContext >> importQueryFile [

	<generated>
	^ self import: FamixPWBQueryFile
]

{ #category : #testing }
FamixPWBImportingContext >> importReference [

	<generated>
	^ self import: FamixPWBReference
]

{ #category : #testing }
FamixPWBImportingContext >> importRoutine [

	<generated>
	^ self import: FamixPWBRoutine
]

{ #category : #testing }
FamixPWBImportingContext >> importSourceAnchor [

	<generated>
	^ self import: FamixPWBSourceAnchor
]

{ #category : #testing }
FamixPWBImportingContext >> importSourceLanguage [

	<generated>
	^ self import: FamixPWBSourceLanguage
]

{ #category : #testing }
FamixPWBImportingContext >> importSourceTextAnchor [

	<generated>
	^ self import: FamixPWBSourceTextAnchor
]

{ #category : #testing }
FamixPWBImportingContext >> importSourcedEntity [

	<generated>
	^ self import: FamixPWBSourcedEntity
]

{ #category : #testing }
FamixPWBImportingContext >> importSqlQuery [

	<generated>
	^ self import: FamixPWBSqlQuery
]

{ #category : #testing }
FamixPWBImportingContext >> importStructureFile [

	<generated>
	^ self import: FamixPWBStructureFile
]

{ #category : #testing }
FamixPWBImportingContext >> importSubRoutine [

	<generated>
	^ self import: FamixPWBSubRoutine
]

{ #category : #testing }
FamixPWBImportingContext >> importTicket [

	<generated>
	^ self import: FamixPWBTicket
]

{ #category : #testing }
FamixPWBImportingContext >> importTicketAssociation [

	<generated>
	^ self import: FamixPWBTicketAssociation
]

{ #category : #testing }
FamixPWBImportingContext >> importTrigger [

	<generated>
	^ self import: FamixPWBTrigger
]

{ #category : #testing }
FamixPWBImportingContext >> importUserObject [

	<generated>
	^ self import: FamixPWBUserObject
]

{ #category : #testing }
FamixPWBImportingContext >> importVariable [

	<generated>
	^ self import: FamixPWBVariable
]

{ #category : #testing }
FamixPWBImportingContext >> importVariableAccess [

	<generated>
	^ self import: FamixPWBVariableAccess
]

{ #category : #testing }
FamixPWBImportingContext >> importWindow [

	<generated>
	^ self import: FamixPWBWindow
]

{ #category : #testing }
FamixPWBImportingContext >> importmajorObject [

	<generated>
	^ self import: FamixPWBmajorObject
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportAbstractFile [

	<generated>
	^ self shouldImport: FamixPWBAbstractFile
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportAbstractFileAnchor [

	<generated>
	^ self shouldImport: FamixPWBAbstractFileAnchor
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportAccess [

	<generated>
	^ self shouldImport: FamixPWBAccess
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportApplication [

	<generated>
	^ self shouldImport: FamixPWBApplication
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportAssociation [

	<generated>
	^ self shouldImport: FamixPWBAssociation
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportAttribute [

	<generated>
	^ self shouldImport: FamixPWBAttribute
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportBasicType [

	<generated>
	^ self shouldImport: FamixPWBBasicType
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportBehavioral [

	<generated>
	^ self shouldImport: FamixPWBBehavioral
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportComment [

	<generated>
	^ self shouldImport: FamixPWBComment
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportCustomType [

	<generated>
	^ self shouldImport: FamixPWBCustomType
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportDataWindow [

	<generated>
	^ self shouldImport: FamixPWBDataWindow
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportEntity [

	<generated>
	^ self shouldImport: FamixPWBEntity
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportEvent [

	<generated>
	^ self shouldImport: FamixPWBEvent
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportFile [

	<generated>
	^ self shouldImport: FamixPWBFile
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportFileAnchor [

	<generated>
	^ self shouldImport: FamixPWBFileAnchor
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportFolder [

	<generated>
	^ self shouldImport: FamixPWBFolder
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportFunction [

	<generated>
	^ self shouldImport: FamixPWBFunction
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportFunctionFile [

	<generated>
	^ self shouldImport: FamixPWBFunctionFile
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportGraphicComponent [

	<generated>
	^ self shouldImport: FamixPWBGraphicComponent
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportIndexedFileAnchor [

	<generated>
	^ self shouldImport: FamixPWBIndexedFileAnchor
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportInvocation [

	<generated>
	^ self shouldImport: FamixPWBInvocation
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportLibrary [

	<generated>
	^ self shouldImport: FamixPWBLibrary
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportMenuObject [

	<generated>
	^ self shouldImport: FamixPWBMenuObject
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportMultipleFileAnchor [

	<generated>
	^ self shouldImport: FamixPWBMultipleFileAnchor
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportNamedEntity [

	<generated>
	^ self shouldImport: FamixPWBNamedEntity
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportQueryFile [

	<generated>
	^ self shouldImport: FamixPWBQueryFile
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportReference [

	<generated>
	^ self shouldImport: FamixPWBReference
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportRoutine [

	<generated>
	^ self shouldImport: FamixPWBRoutine
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportSourceAnchor [

	<generated>
	^ self shouldImport: FamixPWBSourceAnchor
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportSourceLanguage [

	<generated>
	^ self shouldImport: FamixPWBSourceLanguage
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportSourceTextAnchor [

	<generated>
	^ self shouldImport: FamixPWBSourceTextAnchor
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportSourcedEntity [

	<generated>
	^ self shouldImport: FamixPWBSourcedEntity
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportSqlQuery [

	<generated>
	^ self shouldImport: FamixPWBSqlQuery
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportStructureFile [

	<generated>
	^ self shouldImport: FamixPWBStructureFile
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportSubRoutine [

	<generated>
	^ self shouldImport: FamixPWBSubRoutine
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportTicket [

	<generated>
	^ self shouldImport: FamixPWBTicket
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportTicketAssociation [

	<generated>
	^ self shouldImport: FamixPWBTicketAssociation
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportTrigger [

	<generated>
	^ self shouldImport: FamixPWBTrigger
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportUserObject [

	<generated>
	^ self shouldImport: FamixPWBUserObject
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportVariable [

	<generated>
	^ self shouldImport: FamixPWBVariable
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportVariableAccess [

	<generated>
	^ self shouldImport: FamixPWBVariableAccess
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportWindow [

	<generated>
	^ self shouldImport: FamixPWBWindow
]

{ #category : #testing }
FamixPWBImportingContext >> shouldImportmajorObject [

	<generated>
	^ self shouldImport: FamixPWBmajorObject
]
