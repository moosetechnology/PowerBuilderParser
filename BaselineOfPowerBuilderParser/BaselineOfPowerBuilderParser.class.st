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
			self baselineOfXMLParser: spec.

			"Packages"
			spec
				package: 'PowerBuilder-Parser-Tests'
					with: [ spec requires: #('PowerBuilder-Parser-Core') ];
				package: 'PowerBuilder-Parser-Core'
					with: [ spec requires: #('PetitParser2' 'PetitParserTooling') ];
				package: 'PowerBuilder-Parser-AST';
				package: 'Famix-PowerBuilder-Entities';
				package: 'PowerBuilder-Parser-Visitor'
					with: [ "with: [ spec requires: #('Famix') ]"
					"
					with: [ spec requires: #('Famix') ]"
					spec
						requires:
							#('Famix-PowerBuilder-Entities' 'PowerBuilder-Parser-AST' 'SymbolResolver') ] ];
		package: 'PowerBuilder-Parser-Violation'
			with: [ spec requires: #('PowerBuilder-Parser-Visitor') ]
]

{ #category : #baselines }
BaselineOfPowerBuilderParser >> baselineOfFamix: spec [
	spec
		baseline: 'Famix'
		with: [ spec
				repository:
					'github://moosetechnology/Famix:8701793dde7cf0b1ec908995763d9ea17134717e/src' ]
]

{ #category : #baselines }
BaselineOfPowerBuilderParser >> baselineOfPetitParser2: spec [
	spec
		baseline: 'PetitParser2'
		with: [ spec
				repository:
					'github://kursjan/petitparser2:731216a76e0ab7957fc45fa1099ced7f2627e3ab' ].
	spec
		baseline: 'PetitParserTooling'
		with: [ spec
				repository: 'github://moosetechnology/PetitParserTooling';
				loads: #(PetitParser2Boost) ]
]

{ #category : #baselines }
BaselineOfPowerBuilderParser >> baselineOfSymbolResolver: spec [
	spec
		baseline: 'SymbolResolver'

		with: [ spec repository: 'github://moosetechnology/SymbolResolver:main/src' ]

]

{ #category : #baselines }
BaselineOfPowerBuilderParser >> baselineOfXMLParser: spec [
	spec
		baseline: 'XMLParser'
		with: [ spec
				repository: 'github://pharo-contributions/XML-XMLParser:master/src' ]
]
