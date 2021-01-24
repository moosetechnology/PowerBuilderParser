"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestPowerBuilderParserTests,
	#superclass : #PackageManifest,
	#category : #'PowerBuilder-Parser-Tests-Manifest'
}

{ #category : #'code-critics' }
ManifestPowerBuilderParserTests class >> ruleRBLongMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#PWBSRUImporterVisitorsTest #testTypeWithin2 #false)) #'2021-01-24T10:37:08.556143+01:00') )
]
