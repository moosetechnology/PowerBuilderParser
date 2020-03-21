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
			"self baselineOfFamix: spec."
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
					spec
						requires:
							#('Famix-PowerBuilder-Entities' 'PowerBuilder-Parser-AST' 'SymbolResolver') ] ].
	spec
		for: #WithoutMoose
		do: [ self baselineOfFamix:  spec.
			spec
				package: 'Famix-PowerBuilder-Entities'
				with: [ spec requires: #('Famix') ] ]
]

{ #category : #baselines }
BaselineOfPowerBuilderParser >> baselineOfFamix: spec [
	spec
    	baseline: 'Famix'
    	with: [ spec repository: 'github://moosetechnology/Moose:development/src' ]
]

{ #category : #baselines }
BaselineOfPowerBuilderParser >> baselineOfMoose: spec [
	spec
    	baseline: 'Moose'
    	with: [ spec repository: 'github://moosetechnology/Moose:development/src' ]
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
				repository: 'github://Larcheveque/PetitParserTooling';
				loads: #(PetitParser2Boost) ]
]

{ #category : #baselines }
BaselineOfPowerBuilderParser >> baselineOfSymbolResolver: spec [
	spec
		baseline: 'SymbolResolver'

		with: [ spec repository: 'github://moosetechnology/SymbolResolver:master/src' ]

]

{ #category : #accessing }
BaselineOfPowerBuilderParser >> customProjectAttributes [
	self class environment
		at: #MooseEntity
		ifAbsent: [ ^ #(#WithoutMoose) ].
	^ #()
]
