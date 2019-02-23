Class {
	#name : #BaselineOfPowerBuilderParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfPowerBuilderParser
}

{ #category : #baselines }
BaselineOfPowerBuilderParser >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ "Dependencies"
			self baselineOfPetitParser2: spec.
			"Packages"
			spec
				package: 'PowerBuilder-Parser-Tests';
				package: 'PowerBuilder-Parser-Core'
					with: [ spec requires: #('PetitParser2' 'PowerBuilder-Parser-Tests') ] ].
				"Groups"
]

{ #category : #baselines }
BaselineOfPowerBuilderParser >> baselineOfPetitParser2:spec [
	spec
	baseline:'BaselineOfPetitParser2'
	with:[spec repository:'github://kursjan/petitparser2:master' ]
]
