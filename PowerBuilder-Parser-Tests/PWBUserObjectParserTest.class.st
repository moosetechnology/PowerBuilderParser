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
PWBUserObjectParserTest >> testArgument [
	self parse: 'string as_param' rule: #argument
]

{ #category : #tests }
PWBUserObjectParserTest >> testAssignationStatement [
	self parse: 'this.Control[]={this.dw_liste,this.dw_detail}' rule: #assignationStatement.
	self parse: 'this.dw_liste=create dw_liste' rule: #assignationStatement.
	self parse: 'this.dw_detail=create dw_detail' rule: #assignationStatement.
	
]

{ #category : #tests }
PWBUserObjectParserTest >> testAttribute [
	self parse: 'integer ii_dossier_type = -1' rule: #attribute.
	self parse: 'long il_cur_caisse, il_cot' rule: #attribute.
	self parse: 'string is_cre_uti = ''?''' rule: #attribute.
	self parse: 'borderstyle borderstyle = stylelowered!' rule: #attribute.
	

]

{ #category : #tests }
PWBUserObjectParserTest >> testCallStatement [
	self parse: 'call uo_traitement::create' rule: #callStatement.
	self parse: 'CALL w_emp`cb_close::Clicked' rule: #callStatement
]

{ #category : #tests }
PWBUserObjectParserTest >> testCondition [
	self parse: 'TRUE = TRUE and TRUE' rule: #condition.
	self parse: 'this.validate()' rule: #condition.
	self parse: 'true <> false' rule: #condition.
	self parse: 'dw_detail.getRow() <> this.getRow()' rule: #condition.
	self
		parse: 'dw_detail.visible = TRUE and dw_detail.getRow() <> this.getRow()'
		rule: #condition
]

{ #category : #tests }
PWBUserObjectParserTest >> testEventAttribute [
	self parse: 'event ue_post_constructor pbm_custom02' rule: #eventAttribute.
	self parse: 'event ue_rdc ( )' rule: #eventAttribute.
	self parse: 'event ue_change_titre_onglet ( string as_mod )' rule: #eventAttribute
]

{ #category : #tests }
PWBUserObjectParserTest >> testEventDeclaration [
	self parse: 'event constructor;call super::constructor;
this.ii_dw_type = DW_TYPE_LISTE
this.x = 0
this.y = 0
this.width = parent.width - 100
this.height = (parent.height / 2) - 200
end event' rule: #eventDeclaration
]

{ #category : #tests }
PWBUserObjectParserTest >> testFunctionDeclaration [
	self
		parse: 'public function integer uf_maj_caisse (long al_num, string as_param)'
		rule: #functionDeclaration.
	self parse: 'public function boolean uf_ouvre_caisse ()' rule: #functionDeclaration.
	self
		parse: 'public function integer uf_desaff_imput (long al_dss)'
		rule: #functionDeclaration.
	self parse: 'public function integer uf_verif_cot_ech ()' rule: #functionDeclaration.
	self
		parse:
			'public function integer f_annul_appel (string as_adh, long al_par_no, long al_dss, long al_lig)'
		rule: #functionDeclaration.
	self parse: 'public function long uf_dct_lig (long al_dss)' rule: #functionDeclaration.
	self
		parse: 'public function integer uf_rdg_cot_mbs (long al_dct_dss)'
		rule: #functionDeclaration.
	self
		parse: 'public function string uf_init_col (integer al_month)'
		rule: #functionDeclaration.
	self
		parse: 'public function string uf_lettrage (string as_dct_adn, long al_par_no)'
		rule: #functionDeclaration.
	self
		parse: 'public function integer uf_annul_od (long al_dss, long al_lig, string as_cod_od)'
		rule: #functionDeclaration.
	self
		parse: 'public function string uf_traduit_ech (string as_nom_col, string as_exe)'
		rule: #functionDeclaration.
	self
		parse:
			'public function integer uf_desactiver_menu_contextuel_adherent (ref mc_dossier_participation am_menu)'
		rule: #functionDeclaration.
	self
		parse: 'public function integer uf_desactiver_menu_contextuel (ref ma_contextuel am_menu)'
		rule: #functionDeclaration.
	self
		parse:
			'public function integer f_annul_appel (string as_adh, long al_par_no, long al_dss, long al_lig, string as_dct_aoc, string as_dct_ref)'
		rule: #functionDeclaration.
	self
		parse: 'public function string uf_fenetre_ges_ofm (string as_type_contrat)'
		rule: #functionDeclaration.
	self
		parse:
			'public function integer uf_saisie_effectif_montant (string as_adh_ctr, long al_prt_no, long al_dct_dss, long al_org_no)'
		rule: #functionDeclaration
]

{ #category : #tests }
PWBUserObjectParserTest >> testFunctionInvocation1 [
	self
		parse:
			'destroy(this.dw_liste)'
		rule: #functionInvocation
]

{ #category : #tests }
PWBUserObjectParserTest >> testGlobalVariableDeclaration [
	self parse: 'global uo_consultation_histo_suppression_ech uo_consultation_histo_suppression_ech' rule: #globalVariableDeclaration
]

{ #category : #accessing }
PWBUserObjectParserTest >> testIfStatement [
	self parse: 'if this.ib_exe_cascade = TRUE then
	this.postEvent(rowFocusChanged!)
	return
end if' rule: #ifStatement
]

{ #category : #tests }
PWBUserObjectParserTest >> testPrototypesDeclaration [
	self
		parse:
			'forward prototypes
public function boolean uf_init_caisse ()
public function integer uf_maj_caisse (long al_num, string as_param)
public function boolean uf_ouvre_caisse ()
public function integer uf_desaff_imput (long al_dss)
public function integer uf_verif_cot_ech ()
public function integer f_annul_appel (string as_adh, long al_par_no, long al_dss, long al_lig)
public function long uf_dct_lig (long al_dss)
public function integer uf_rdg_cot_mbs (long al_dct_dss)
public function string uf_init_col (integer al_month)
public subroutine uf_histo_echeancier (long al_par_no, string as_ech_exe, string as_adh_ctr)
public function string uf_lettrage (string as_dct_adn, long al_par_no)
public function integer uf_annul_od (long al_dss, long al_lig, string as_cod_od)
public function string uf_traduit_ech (string as_nom_col, string as_exe)
public function integer uf_desactiver_menu_contextuel_adherent (ref mc_dossier_participation am_menu)
public function integer uf_desactiver_menu_contextuel (ref ma_contextuel am_menu)
public function integer f_annul_appel (string as_adh, long al_par_no, long al_dss, long al_lig, string as_dct_aoc, string as_dct_ref)
public function string uf_fenetre_ges_ofm (string as_type_contrat)
public function integer uf_saisie_effectif_montant (string as_adh_ctr, long al_prt_no, long al_dct_dss, long al_org_no)
end prototypes'
		rule: #prototypesDeclaration
]

{ #category : #tests }
PWBUserObjectParserTest >> testStatement [
	self parse: 'dw_detail.setFocus()' rule: #statement.
	self parse: 'return' rule: #statement
]

{ #category : #tests }
PWBUserObjectParserTest >> testSubroutineDeclaration [
	self parse: 'public subroutine uf_histo_echeancier (long al_par_no, string as_ech_exe, string as_adh_ctr)' rule: #subroutineDeclaration.
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
PWBUserObjectParserTest >> testTriggerDefinition2 [
	self
		parse:
			'on uo_consultation_histo_suppression_ech.destroy
destroy(this.dw_liste)
destroy(this.dw_detail)
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
PWBUserObjectParserTest >> testTypeVariable [
	self parse: 'type variables
date id_aujourd_hui
string is_lst_rdg_capital = ""
decimal id_montant_plafond = 0
decimal id_montant_indexation = 0
long id_nbs_annee_index = 0
long il_nbs_gpp_trt = 0
long il_nbs_plafond_atteint = 0
long il_nbs_gpp_err = 0
string is_guid = ""
string is_uti_trt = "IDXAD"
string is_sql_ave
datastore lds_ave
end variables' rule: #typeVariable.
]

{ #category : #tests }
PWBUserObjectParserTest >> testTypeVariableSlash [
	self parse: 'type variables
boolean ib_actif = FALSE

integer ii_dossier_type = -1
integer ii_sous_dossier_type = - 1
long il_cur_par_no = -1
string is_cur_adn = ""

long il_cur_caisse, il_cot
string is_cre_uti = ''?''
string is_ech_neg, is_rgl_brd, is_cot_imp, is_gal_gca, is_gen_reg, is_ges_ind, is_des_aff
decimal id_solde
boolean ib_relecture = FALSE
boolean ib_annul_rejet = FALSE
string is_ges_arj


String is_dct_ou_dct_int

/' rule: #typeVariable.
]

{ #category : #tests }
PWBUserObjectParserTest >> testVariableOrType [
	self parse: 'this.dw_liste' rule: #variableOrType
]
