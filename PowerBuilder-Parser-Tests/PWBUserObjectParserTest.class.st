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
PWBUserObjectParserTest >> testCallStatement [
	self parse: 'CALL w_emp`cb_close::Clicked' rule: #callStatement.
	self parse: 'call uo_traitement::create' rule: #callStatement.
]

{ #category : #tests }
PWBUserObjectParserTest >> testGlobalVariableDeclaration [
	self parse: 'global uo_consultation_histo_suppression_ech uo_consultation_histo_suppression_ech' rule: #globalVariableDeclaration
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
PWBUserObjectParserTest >> testTypeDeclaration1 [
	self parse: 'global type uo_cotisations_adherent from uo_deux_listes_en_synchro
integer width = 1792
integer height = 1304
event edw_synchro_onglet pbm_custom01
event ue_post_constructor pbm_custom02
event ue_rdc ( )
event ue_change_titre_onglet ( string as_mod )
dw_grp dw_grp
dw_det_app dw_det_app
dw_caisse dw_caisse
dw_det_cai dw_det_cai
dw_sup_dct dw_sup_dct
dw_his_dct dw_his_dct
dw_det_imp dw_det_imp
dw_ech dw_ech
dw_det_ech dw_det_ech
dw_indu dw_indu
dw_annul_imp dw_annul_imp
dw_lig dw_lig
dw_ctrl_cot_mbs dw_ctrl_cot_mbs
dw_lis_app dw_lis_app
dw_ech_histo dw_ech_histo
dw_det_ech_pour_histo dw_det_ech_pour_histo
dw_ob dw_ob
dw_ch dw_ch
dw_es dw_es
dw_ann_od dw_ann_od
dw_detail_cot_ent dw_detail_cot_ent
dw_detail_appel dw_detail_appel
end type' rule: #typeDeclaration.
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

{ #category : #tests }
PWBUserObjectParserTest >> testVariableOrType [
	self parse: 'this.dw_liste' rule: #variableOrType
]
