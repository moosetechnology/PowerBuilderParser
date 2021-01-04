Class {
	#name : #PWBSRFImporterVisitorsTest,
	#superclass : #PWBAbstractImporterVisitorsTest,
	#category : #'PowerBuilder-Parser-Tests-Visitors'
}

{ #category : #running }
PWBSRFImporterVisitorsTest >> fileExtension [ 
	^'srf'
]

{ #category : #tests }
PWBSRFImporterVisitorsTest >> testGlobalTypeDeclaration [
	self importCode: 
'global type testFile from function_object
end type
'.

	self assert: (model getAllFamixType: FamixPWBGlobalFunction) size equals: 1.
	self assert: (model getAllFamixType: FamixPWBGlobalFunction) anyOne name equals: 'testFile'

]
