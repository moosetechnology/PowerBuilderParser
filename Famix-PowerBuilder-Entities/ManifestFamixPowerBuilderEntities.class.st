"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestFamixPowerBuilderEntities,
	#superclass : #PackageManifest,
	#category : #'Famix-PowerBuilder-Entities-Manifest'
}

{ #category : #'code-critics' }
ManifestFamixPowerBuilderEntities class >> ruleRBBadMessageRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#FamixPWBImportingContext #importMaximum #false)) #'2019-07-31T11:16:33.947164+02:00') )
]
