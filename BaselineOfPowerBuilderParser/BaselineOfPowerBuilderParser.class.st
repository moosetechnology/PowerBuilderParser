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
			"Groups"
			self baselineOfPetitParser2: spec.
			self baselineOfSymbolResolver: spec.
			"Packages"
			spec
				package: 'PowerBuilder-Parser-Tests';
				package: 'PowerBuilder-Parser-Core'
					with: [ spec
						requires: #('PetitParser2' 'PowerBuilder-Parser-Tests' 'SymbolResolver') ] ]
]

{ #category : #baselines }
BaselineOfPowerBuilderParser >> baselineOfPetitParser2: spec [
	spec
		baseline: 'PetitParser2'
		with: [ spec
				repository:
					'github://kursjan/petitparser2:731216a76e0ab7957fc45fa1099ced7f2627e3ab' ]
]

{ #category : #baselines }
BaselineOfPowerBuilderParser >> baselineOfSymbolResolver: spec [
	spec
		baseline: 'SymbolResolver'
		with: [ spec repository: 'github://Larcheveque/SymbolResolver:master/src' ]
]
