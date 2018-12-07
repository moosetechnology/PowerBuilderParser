Class {
	#name : #PWBUserObjectParserTest,
	#superclass : #PP2CompositeNodeTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #accessing }
PWBUserObjectParserTest >> parserClass [
	^ PWBUserObjectParser 
]

{ #category : #tests }
PWBUserObjectParserTest >> testAssignationStatement [
	self parse: 'this.dw_liste=create dw_liste' rule: #assignationStatement.
	self parse: 'this.dw_detail=create dw_detail' rule: #assignationStatement.
	self
		parse:
			'this.Control[]={this.dw_liste,this.dw_detail}'
		rule: #assignationStatement
]

{ #category : #tests }
PWBUserObjectParserTest >> testTriggerDefinition [
	self
		parse:
			'on uo_consultation_histo_suppression_ech.create
this.dw_liste=create dw_liste
this.dw_detail=create dw_detail
this.Control[]={this.dw_liste,this.dw_detail}
end on'
		rule: #triggerDefinition
]

{ #category : #tests }
PWBUserObjectParserTest >> testTypeDeclaration [
	self parse: 'global type uo_consultation_histo_suppression_ech from userobject
end type' rule: #typeDeclaration.
	self parse: 'type dw_liste from uo_dw_detail within uo_consultation_histo_suppression_ech
end type' rule: #typeDeclaration
]

{ #category : #tests }
PWBUserObjectParserTest >> testTypeDeclarationAddedAttributes [
	self
		parse:
			'global type uo_consultation_histo_suppression_ech from userobject
string tag = "uo_liste_detail_en_partage"
integer width = 2944
integer height = 1268
long backcolor = 79741120
long tabtextcolor = 33554432
long tabbackcolor = 16777215
long picturemaskcolor = 536870912
dw_liste dw_liste
dw_detail dw_detail
end type'
		rule: #typeDeclaration
]
