Class {
	#name : #PWBUserObjectParserTest,
	#superclass : #PP2CompositeNodeTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #accessing }
PWBUserObjectParserTest >> parserClass [
	^ PWBUserObjectGrammar 
]

{ #category : #tests }
PWBUserObjectParserTest >> testAccessOrType [
	self parse: 'this.dw_liste' rule: #accessOrType.
	self fail: 'if' rule: #accessOrType.
	self parse: 'thisMatch' rule: #accessOrType.
]

{ #category : #tests }
PWBUserObjectParserTest >> testArgument [
	self parse: 'string as_param' rule: #argument
]

{ #category : #tests }
PWBUserObjectParserTest >> testAssignationStatement [
	self
		parse: 'this.Control[]={this.dw_liste,this.dw_detail}'
		rule: #assignationStatement.
	self
		parse: 'this.dw_liste=create dw_liste'
		rule: #assignationStatement.
	self
		parse: 'this.dw_detail=create dw_detail'
		rule: #assignationStatement.
	self
		parse: 'll_qtm = Long(f_liq_cod("QTM"))'
		rule: #assignationStatement.
	self
		parse:
			'Ls_SqlSelect += " where det_cai.lib like " + "''" + ls_dct_dss + "%''"'
		rule: #assignationStatement.
	self
		parse: 'am_menu.m_contextuel.m_nouveau_dd.item[1].enabled = false'
		rule: #assignationStatement.
	self
		parse: 'this.Control[iCurrent+1]=this.dw_grp'
		rule: #assignationStatement.
	self
		parse: 'lpo_fenetre = parent.getParent().getParent().getParent().getParent()'
		rule: #assignationStatement.
	self parse: 'll_mois -= 12' rule: #assignationStatement.
	self parse: 'ld_resultat = - ld_resultat' rule: #assignationStatement.
	self
		parse: 'is_liste_det_ave[li_cpt,1] = ls_col_name'
		rule: #assignationStatement.
	self parse: 'll_wz /= 2' rule: #assignationStatement
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
	self parse: 'CALL w_emp`cb_close::Clicked' rule: #callStatement.
	self parse: 'call super::edw_histo_suppression' rule: #callStatement.
	self parse: 'call super :: ue_dwnmousemove' rule: #callStatement
]

{ #category : #tests }
PWBUserObjectParserTest >> testChooseCase [
	self parse: 'choose case message.wordParm
	case SYNCHRO_OPEN, SYNCHRO_SELECTION_DOSSIER
		this.ib_actif = TRUE
		long ll_par_no
		if ldw_wz.getRow() > 0 then
			ll_par_no = ldw_wz.getItemNumber(ldw_wz.getRow(), "par_no")
				il_cur_par_no = ll_par_no
				if ldw_wz.dataobject = "dw_liste_aid_prt" then
					il_cur_par_no = ldw_wz.getItemNumber(ldw_wz.getRow(), "ads_par_no")
				else
					il_cur_par_no = ll_par_no
				end if
				if ii_dossier_type = -1 then
					wa_dossier lwa_dss
					lwa_dss = dw_liste.iw_dossier
					lwa_dss.triggerEvent("init_proprietes", 0, "")
					ii_dossier_type = lwa_dss.ii_dossier_type	
					ii_typ_dos = lwa_dss.ii_typ_dos
				end if
				if ii_dossier_type = DOSSIER_ADHERENT then
					is_cur_adn = ldw_wz.getItemString(ldw_wz.getRow(), "prt_adn")
				elseif ii_dossier_type = DOSSIER_PARTENAIRE then
					is_cur_adn = ldw_wz.getItemString(ldw_wz.getRow(), "ptn_no")
				else
					is_cur_adn = ldw_wz.getItemString(ldw_wz.getRow(), "ent_cod")
				end if
				if is_typ_ind = "O" and ii_typ_dos = DOSSIER_PREVOYANCE and ii_pass = 1 then
				
					dw_liste.visible = FALSE
					dw_indu.visible = TRUE
					dw_indu.triggerEvent("edw_lecture", 0, "")
					ii_pass = 2
				else
					dw_liste.triggerEvent("edw_lecture", 0, "")
				end if
		end if
	case SYNCHRO_CLOSE
		this.ib_actif = FALSE
	case SYNCHRO_CLOSE_QUERY
	case SYNCHRO_RESET
		il_cur_par_no = -1
		dw_liste.triggerEvent("edw_lecture", 0, "")
end choose' rule: #chooseCase
]

{ #category : #tests }
PWBUserObjectParserTest >> testChooseCase2 [
	self parse: 'choose case ls_evn
		case "AC","EN"
			dw_det_app.setItem(ll_xz, "dct_evn", "AA")
			dw_det_app.setItem(ll_xz, "dct_tlg", "C")
			dw_det_app.setItem(ll_wz, "dct_crt", ld_dbt)
			
			
			if ls_ValeurRDG_GAL_GCA = ''O'' then dw_det_app.setItem(ll_xz, "dct_trt", "SM") 
			
			
			ld_dbt_aa = ld_dbt
			ll_old_ll_wz = ll_wz
			ll_old_nbe = ll_nbe
			ll_old_ll_xz = ll_xz
		case "DC"
			dw_det_app.setItem(ll_xz, "dct_tlg", "D")
			if ld_dbt = 0.00 then
				dw_det_app.setItem(ll_xz, "dct_dbt", ld_crt)
			else
				dw_det_app.setItem(ll_xz, "dct_dbt", 0)
			end if
		case else
			dw_det_app.setItem(ll_xz, "dct_tlg", "O")
			if ld_dbt = 0.00 then
				dw_det_app.setItem(ll_xz, "dct_dbt", ld_crt)
			else
				dw_det_app.setItem(ll_xz, "dct_dbt", 0)
			end if
	end choose' rule: #chooseCase
]

{ #category : #tests }
PWBUserObjectParserTest >> testChooseCase3 [
	self parse: 'choose case ls_evn
		case "AC","EN"
			ll_old_nbe = ll_nbe
			ll_old_ll_xz = ll_xz
		case "DC"
			
		case else
			
	end choose' rule: #chooseCase
]

{ #category : #tests }
PWBUserObjectParserTest >> testCondition [
	self parse: 'TRUE = TRUE and TRUE' rule: #condition.
	self parse: 'this.validate()' rule: #condition.
	self parse: 'true <> false' rule: #condition.
	self parse: 'dw_detail.getRow() <> this.getRow()' rule: #condition.
	self
		parse: 'dw_detail.visible = TRUE and dw_detail.getRow() <> this.getRow()'
		rule: #condition.
	self
		parse:
			'(not isnull(ldwc_wz.getitemdate(	ll_compt,"ddw_fin"))) and 						ldwc_wz.getitemdate(	ll_compt,"ddw_fin") < today()'
		rule: #condition
]

{ #category : #tests }
PWBUserObjectParserTest >> testDeclareCursor [
	self
		parse:
			'DECLARE C_column_ave CURSOR FOR
SELECT name  FROM sysibm.syscolumns WHERE tbname = ''AVE'' order by colno using sqlca;'
		rule: #declareCursor
]

{ #category : #tests }
PWBUserObjectParserTest >> testDoLoopUntil [
	self parse: 'do
	ll_lig ++
	ls_exp_val = gw_utile.dw_sys_ddex.getitemString(ll_lig, "exp_val") + ";"
	ls_type_contrat_fen_sai = f_trt_param(ls_exp_val, "FEN_SAI")
	
	if pos("," + ls_type_contrat_fen_sai + ",", "," + as_type_contrat + ",") > 0 then
		ls_typ_fen = f_trt_param(ls_exp_val, "TYP_FEN")
		lb_trouve = true
	end if
loop until ll_lig >= ll_nbs_lig or lb_trouve' rule: #doLoopUntil
]

{ #category : #tests }
PWBUserObjectParserTest >> testDoLoopWhile [
	self parse: 'do 
	ll_wz = atv_cible.findItem(rootTreeItem!, 0)
	if ll_wz = -1 then exit
	atv_cible.collapseItem(ll_wz)
	atv_cible.deleteItem(ll_wz)
loop while 1 = 1' rule: #doLoopWhile
]

{ #category : #tests }
PWBUserObjectParserTest >> testDoUntilLoop [
	self parse: 'do until ll_lig >= ll_nbs_lig or lb_trouve
	ll_lig ++
	ls_exp_val = gw_utile.dw_sys_ddex.getitemString(ll_lig, "exp_val") + ";"
	ls_type_contrat_fen_sai = f_trt_param(ls_exp_val, "FEN_SAI")
	
	if pos("," + ls_type_contrat_fen_sai + ",", "," + as_type_contrat + ",") > 0 then
		ls_typ_fen = f_trt_param(ls_exp_val, "TYP_FEN")
		lb_trouve = true
	end if
loop' rule: #doUntilLoop
]

{ #category : #tests }
PWBUserObjectParserTest >> testDoWhileLoop [
	self parse: 'do while ll_lig_gpp <= ll_nbs_lig_gpp and not  iw_trt.wf_annuler()
		
		ll_gpp_no = dw_gpp_a_reval.getitemNumber(ll_lig_gpp, "gpp_no")
		ls_gpp_ids = dw_gpp_a_reval.getitemString(ll_lig_gpp, "gpp_ids")
		ls_adh_ctr = dw_gpp_a_reval.getitemString(ll_lig_gpp, "adh_ctr")
		ll_par_par = dw_gpp_a_reval.getitemNumber(ll_lig_gpp, "par_par")
		ls_acc_mcp = dw_gpp_a_reval.getitemString(ll_lig_gpp, "acc_mcp")
		
		
		if ls_gpp_ids = ''00405727'' or ls_gpp_ids = ''00096271'' or ls_gpp_ids = ''00432677'' or ls_gpp_ids = ls_adherent_test then
			string ls
			ls = ""
		end if
		
		


		is_jrn_trt.s_prt_adn = ls_gpp_ids
		is_jrn_trt.s_adh_ctr = ls_adh_ctr
		
		uf_aff("ctr_cur",ls_gpp_ids)
		uf_aff("ctr_trt", string(ll_lig_gpp))
		
		ll_retour_fct = uf_modifications_paa(ls_gpp_ids, ll_par_par, ll_gpp_no)
		
		if ll_retour_fct = 1 then
			
			if dw_insert_paa.rowcount() > 0 then
				ls_paa_val = dw_insert_paa.getitemstring(1, "paa_val")
				
				ll_retour_fct = uf_modification_ave(ls_gpp_ids, ll_gpp_no, ls_paa_val)
				if ll_retour_fct = 1 then
					
					dw_paa.triggerEvent("edw_sauver", 0, "")
					dw_insert_paa.triggerEvent("edw_sauver", 0, "")
					
					
					uf_creer_evn_mtr(ls_adh_ctr, "INDEX", "INDEX", ll_gpp_no, ll_par_par, "INDEX", ls_gpp_ids, ls_acc_mcp)
					
					
					dw_paa.reset()
					dw_insert_paa.reset()
									
					il_nbs_gpp_trt ++
				end if	
			end if
		end if
		
		if ll_retour_fct = 0 then
			
			il_nbs_plafond_atteint ++
		elseif ll_retour_fct <> 1 then
			
			il_nbs_gpp_err ++
		end if

		ll_lig_gpp ++
		
	loop' rule: #doWhileLoop
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
PWBUserObjectParserTest >> testEventDeclaration2 [
	self parse: 'event ue_rdc();
if il_cot = 1 then
	dw_liste.postevent("ue_menu",1,"m_edt_rdc")
else
	messagebox("Attention","Vous ne vous trouvez pas sur les cotisations de l''adhérent")
end if
end event' rule: #eventDeclaration
]

{ #category : #tests }
PWBUserObjectParserTest >> testEventDeclaration3 [
	self parse: 'event dw_liste::edw_dct_ou_dct_int();if is_dct_ou_dct_int = "dct_int" then
	is_dct_ou_dct_int = "dct"
else
	is_dct_ou_dct_int = "dct_int"
end if
dw_liste.triggerEvent("edw_lecture", 0, "")
end event' rule: #eventDeclaration
]

{ #category : #tests }
PWBUserObjectParserTest >> testEventDeclarationEmpty [
	self parse: 'event constructor;call super::constructor;
end event' rule: #eventDeclaration
]

{ #category : #tests }
PWBUserObjectParserTest >> testForLoop1 [
	self
		parse: 'for ll_wz = 1 to ll_nz
	astr_tv_param.ligne = ll_wz
	
	
	this.event.etv_item_niveau(0, 0)
	
	ltvi_wz.pictureIndex = astr_tv_param.pictureIndex
	ltvi_wz.selectedPictureIndex = astr_tv_param.selectedPictureIndex
	
	if astr_tv_param.niveau = 0 then
		
		
		this.event.etv_item_label(0, 0)
		
		ltvi_wz.label = astr_tv_param.label
		ll_hz = atv_cible.insertItemSort(0, ltvi_wz)
		adw_liste.setItem(ll_wz, as_col_phd, 0)
		adw_liste.setItem(ll_wz, as_col_hdl, ll_hz)
	else
		adw_liste.setItem(ll_wz, as_col_phd, 0)
		adw_liste.setItem(ll_wz, as_col_hdl, 0)
	end if
next'
		rule: #forLoop
]

{ #category : #tests }
PWBUserObjectParserTest >> testFunctionDeclaration [
	self
		parse: 'public function integer uf_maj_caisse (long al_num, string as_param)'
		rule: #functionDeclaration.
	self
		parse: 'public function boolean uf_ouvre_caisse ()'
		rule: #functionDeclaration.
	self
		parse: 'public function integer uf_desaff_imput (long al_dss)'
		rule: #functionDeclaration.
	self
		parse: 'public function integer uf_verif_cot_ech ()'
		rule: #functionDeclaration.
	self
		parse:
			'public function integer f_annul_appel (string as_adh, long al_par_no, long al_dss, long al_lig)'
		rule: #functionDeclaration.
	self
		parse: 'public function long uf_dct_lig (long al_dss)'
		rule: #functionDeclaration.
	self
		parse: 'public function integer uf_rdg_cot_mbs (long al_dct_dss)'
		rule: #functionDeclaration.
	self
		parse: 'public function string uf_init_col (integer al_month)'
		rule: #functionDeclaration.
	self
		parse:
			'public function string uf_lettrage (string as_dct_adn, long al_par_no)'
		rule: #functionDeclaration.
	self
		parse:
			'public function integer uf_annul_od (long al_dss, long al_lig, string as_cod_od)'
		rule: #functionDeclaration.
	self
		parse:
			'public function string uf_traduit_ech (string as_nom_col, string as_exe)'
		rule: #functionDeclaration.
	self
		parse:
			'public function integer uf_desactiver_menu_contextuel_adherent (ref mc_dossier_participation am_menu)'
		rule: #functionDeclaration.
	self
		parse:
			'public function integer uf_desactiver_menu_contextuel (ref ma_contextuel am_menu)'
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
		rule: #functionDeclaration.
	self
		parse: 'public function integer uf_cre_evn (long al_par_no, string as_tip[])'
		rule: #functionDeclaration
]

{ #category : #tests }
PWBUserObjectParserTest >> testFunctionDefinition [
	self
		parse: 'public function integer uf_charge_tv (ref datawindow adw_liste, ref treeview atv_cible, string as_col_phd, string as_col_hdl, long al_niveaux, ref str_tv_param astr_tv_param);


if is_col_hdl = "xxx_xxx" or is_col_phd = "xxx_xxx" then
	messageBox("Erreur", "les colonnes hdl et phd ne sont pas connues ...")
	halt
end if

long ll_wz, ll_nz, ll_xz, ll_hz
treeViewItem ltvi_wz


do 
	ll_wz = atv_cible.findItem(rootTreeItem!, 0)
	if ll_wz = -1 then exit
	atv_cible.collapseItem(ll_wz)
	atv_cible.deleteItem(ll_wz)
loop while 1 = 1

ll_nz = adw_liste.rowCount()

if ll_nz < 1 then return 0


for ll_wz = 1 to ll_nz
	astr_tv_param.ligne = ll_wz
	
	
	this.event etv_item_niveau(0, 0)
	
	ltvi_wz.pictureIndex = astr_tv_param.pictureIndex
	ltvi_wz.selectedPictureIndex = astr_tv_param.selectedPictureIndex
	
	if astr_tv_param.niveau = 0 then
		
		
		this.event etv_item_label(0, 0)
		
		ltvi_wz.label = astr_tv_param.label
		ll_hz = atv_cible.insertItemSort(0, ltvi_wz)
		adw_liste.setItem(ll_wz, as_col_phd, 0)
		adw_liste.setItem(ll_wz, as_col_hdl, ll_hz)
	else
		adw_liste.setItem(ll_wz, as_col_phd, 0)
		adw_liste.setItem(ll_wz, as_col_hdl, 0)
	end if
next


for ll_xz = 1 to al_niveaux
	for ll_wz = 1 to ll_nz
		ll_hz = adw_liste.getItemNumber(ll_wz, as_col_hdl)
		if ll_hz = 0 then
			astr_tv_param.ligne = ll_wz
			
			
			this.event etv_item_niveau(0, 0)
			
			ltvi_wz.pictureIndex = astr_tv_param.pictureIndex
			ltvi_wz.selectedPictureIndex = astr_tv_param.selectedPictureIndex
			if astr_tv_param.niveau = ll_xz then
				
				
				this.event etv_item_label(0, 0)
				
				ltvi_wz.label = astr_tv_param.label
				
				
				this.event etv_item_parent(0, 0)
				
				ll_hz = atv_cible.insertItemSort(astr_tv_param.parent_hdl, ltvi_wz)
				adw_liste.setItem(ll_wz, as_col_phd, astr_tv_param.parent_hdl)
				adw_liste.setItem(ll_wz, as_col_hdl, ll_hz)
			end if
		end if
		if ll_xz = al_niveaux then	
			adw_liste.setItemStatus(ll_wz, as_col_phd, primary!, notModified!)
			adw_liste.setItemStatus(ll_wz, as_col_hdl, primary!, notModified!)
		end if		
	next
next


ll_wz = atv_cible.findItem(rootTreeItem!, 0)
atv_cible.selectItem(ll_wz)
atv_cible.collapseItem(ll_wz)
atv_cible.setFocus()

return 1

end function'
		rule: #functionDefinition
]

{ #category : #tests }
PWBUserObjectParserTest >> testFunctionDefinition1 [
	self
		parse: 'private function integer uf_traitement_dossier (long al_lig);

return 1

end function'
		rule: #functionDefinition
]

{ #category : #tests }
PWBUserObjectParserTest >> testFunctionInvocation1 [
	self
		parse:
			'destroy(this.dw_liste)'
		rule: #functionInvocation
]

{ #category : #tests }
PWBUserObjectParserTest >> testFunctionInvocation2 [
	self
		parse:
			'MessageBox("Montant calculé # : correction   caisse:" + ls_num_cai_pre, 			           "Ld_MT_Solde=" + string(Ld_MT_Solde) + " ~r~n" + 						  "ld_mt_report_pre=" + string(ld_mt_report_pre) + " ~r~n" + 						  "ld_ent_pre = " + string(ld_ent_pre) + " ~r~n" + 						  "ld_sor_pre = " + string(ld_sor_pre))'
		rule: #functionInvocation
]

{ #category : #tests }
PWBUserObjectParserTest >> testFunctionInvocation3 [
	self
		parse:
			'super::uf_jrn_trt(as_evn, as_tlg, as_cod, as_lib)'
		rule: #functionInvocation
]

{ #category : #tests }
PWBUserObjectParserTest >> testGlobalVariableDeclaration [
	self parse: 'global uo_consultation_histo_suppression_ech uo_consultation_histo_suppression_ech' rule: #globalVariableDeclaration
]

{ #category : #tests }
PWBUserObjectParserTest >> testGotoStatement [
	self parse: 'Goto NextStep' rule: #gotoStatement.
	self parse: 'GOTO OK' rule: #gotoStatement
]

{ #category : #accessing }
PWBUserObjectParserTest >> testIfStatement [
	self parse: 'if this.ib_exe_cascade = TRUE then
	this.postEvent(rowFocusChanged!)
	return
end if' rule: #ifStatement.
	self parse: 'if ll_wz = -1 then exit' rule: #ifStatement.



]

{ #category : #accessing }
PWBUserObjectParserTest >> testIfStatement10 [
	self parse: 'if ll_per_no = iuo_res_ent .il_gpp_par then  
										if gw_utile.wf_cre_rdg(as_cal.s_prt_adn, ll_per_no, upper(is_rdg_exp_mca), as_cal.d_cal_deb, is_val_exp_mca , "",  1) = 1 then
											ib_cre_rdg_fid = TRUE
										end if
									end if' rule: #ifStatement.

]

{ #category : #accessing }
PWBUserObjectParserTest >> testIfStatement2 [
	self
		parse:
			'if il_cot = 1 then
	dw_liste.postevent("ue_menu",1,"m_edt_rdc")
else
	messagebox("Attention","Vous ne vous trouvez pas sur les cotisations de l''adhérent")
end if'
		rule: #ifStatement
]

{ #category : #accessing }
PWBUserObjectParserTest >> testIfStatement3 [
	self
		parse:
			'if ii_dossier_type = DOSSIER_ADHERENT then
					is_cur_adn = ldw_wz.getItemString(ldw_wz.getRow(), "prt_adn")
				elseif ii_dossier_type = DOSSIER_PARTENAIRE then
					is_cur_adn = ldw_wz.getItemString(ldw_wz.getRow(), "ptn_no")
				else
					is_cur_adn = ldw_wz.getItemString(ldw_wz.getRow(), "ent_cod")
				end if'
		rule: #ifStatement
]

{ #category : #accessing }
PWBUserObjectParserTest >> testIfStatement4 [
	self
		parse:
			'IF Ld_MT_Solde <> (ld_mt_report_pre + ld_ent_pre - ld_sor_pre) THEN
		If gs_uti_mdp = ''tdebug'' THEN
		   MessageBox("Montant calculé # : correction   caisse:" + ls_num_cai_pre, 			           "Ld_MT_Solde=" + string(Ld_MT_Solde) + " ~r~n" + 						  "ld_mt_report_pre=" + string(ld_mt_report_pre) + " ~r~n" + 						  "ld_ent_pre = " + string(ld_ent_pre) + " ~r~n" + 						  "ld_sor_pre = " + string(ld_sor_pre))
		
	   END IF
END IF'
		rule: #ifStatement
]

{ #category : #accessing }
PWBUserObjectParserTest >> testIfStatement5 [
	self
		parse:
			'if ls_gpp_ids = ''00405727'' or ls_gpp_ids = ''00096271'' or ls_gpp_ids = ''00432677'' or ls_gpp_ids = ls_adherent_test then
			string ls
			ls = ""
		end if'
		rule: #ifStatement
]

{ #category : #accessing }
PWBUserObjectParserTest >> testIfStatement6 [
	self parse: 'if isnull(is_ctr_rej) then is_ctr_rej = "N" else is_ctr_rej = trim(is_ctr_rej)' rule: #ifStatement.

]

{ #category : #accessing }
PWBUserObjectParserTest >> testIfStatement7 [
	self parse: 'if not isNull(ld_dct_dtc) or ld_dct_crt > 0 then
	
		end if' rule: #ifStatement.

]

{ #category : #accessing }
PWBUserObjectParserTest >> testIfStatement8 [
	self parse: 'if not isNull(ld_dct_dtc) or ld_dct_crt > 0 then
	else
		end if' rule: #ifStatement.

]

{ #category : #accessing }
PWBUserObjectParserTest >> testIfStatement9 [
	self parse: 'if true then
	if false then a = 2
	else 
end if' rule: #ifStatement.

]

{ #category : #tests }
PWBUserObjectParserTest >> testMethodInvocation [
	self parse: '.setitem(1,"mt_tra", -ld_mt_mvt)' rule: #methodInvocation
]

{ #category : #tests }
PWBUserObjectParserTest >> testOpenCloseSqlCursor [
	self parse: 'Open C_column_ave ;' rule: #openSqlCursor.
	self parse: 'close C_column_ave ;' rule: #closeSqlCursor
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
PWBUserObjectParserTest >> testReturnStatement [
	self parse: 'return 0' rule: #returnStatement.
	self parse: 'return' rule: #returnStatement. 
	self parse: 'RETURN FALSE' rule: #returnStatement.
	self fail: 'RETURN
delete' rule: #returnStatement.
]

{ #category : #tests }
PWBUserObjectParserTest >> testSqlCommitStatement [
	self parse: 'commit;' rule: #sqlCommitStatement.
	self parse: 'COMMIT USING Emp_tran ;' rule: #sqlCommitStatement.
]

{ #category : #tests }
PWBUserObjectParserTest >> testSqlQuery [
	self
		parse:
			'SELECT max(caisse.num_cai)  
   INTO :ls_num_cai_pre
   FROM caisse  
  WHERE caisse.uti = :is_cre_uti   ;'
		rule: #sqlQuery
]

{ #category : #tests }
PWBUserObjectParserTest >> testSqlQuery2 [
	self
		parse:
			'update dct
		set dct_nbe = :ll_nbe
		where ( dct.dct_dss = :al_dss ) ;'
		rule: #sqlQuery
]

{ #category : #tests }
PWBUserObjectParserTest >> testSqlQuery3 [
	self
		parse:
			'delete from dct where dct_dss = :al_dss and (obi_no = :ll_ide_no or chq_no = :ll_ide_no or esp_no = :ll_ide_no) ;'
		rule: #sqlQuery
]

{ #category : #tests }
PWBUserObjectParserTest >> testSqlQuery4 [
	self
		parse:
			'insert into paa (paa_aoc, paa_dac, paa_uti, sou_no, par_no, gpp_no, rdg_cod, paa_deb, paa_val, paa_fin, adh_ctr, paa_ddw, paa_no) values
			(''N'', current timestamp, :gs_cre_uti, :ll_sou_no, :il_par_no, :il_gpp_no, :ls_rdg_cod, :ld_paa_deb, :ls_paa_val, :ld_paa_fin, :is_adh_ctr, :ls_paa_ddw, :ll_paa_no) ;'
		rule: #sqlQuery
]

{ #category : #tests }
PWBUserObjectParserTest >> testSqlQuery5 [
	self parse: 'fetch C_column_ave into :ls_col_name;' rule: #sqlQuery
]

{ #category : #tests }
PWBUserObjectParserTest >> testSqlRollbackStatement [
	self parse: 'rollback using sqlca;' rule: #sqlRollbackStatement.
	self parse: 'ROLLBACK ;' rule: #sqlRollbackStatement.
]

{ #category : #tests }
PWBUserObjectParserTest >> testStatement [
	self parse: 'dw_detail.setFocus()' rule: #statement.
	self parse: 'return' rule: #statement.
	self parse: 'long ll_par_no' rule: #statement.
	self parse: 'il_nbs_gpp_trt ++' rule: #statement
]

{ #category : #tests }
PWBUserObjectParserTest >> testStatements [
	self
		parse: 'ls_donnee=''''; ls_donnee_2= ''''; ls_donnee_3= ''''; ls_donnee_4 = '''''
		rule: #statements
]

{ #category : #tests }
PWBUserObjectParserTest >> testSubroutineDeclaration [
	self
		parse:
			'public subroutine uf_histo_echeancier (long al_par_no, string as_ech_exe, string as_adh_ctr)'
		rule: #subroutineDeclaration.
	self
		parse:
			'protected subroutine uf_flx_nom (string as_rep, date ad_dat_fic, ref string as_fic, string as_ent_traite, string as_zy)'
		rule: #subroutineDeclaration
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
PWBUserObjectParserTest >> testTryCatch [
	self parse: 'try
	string ll_test
	if ll_wz = 0 then
		setnull(ll_test)
	else
		ll_test = this.getItemString(ll_wz, "grp_cod")
	end if
	lm_menu.m_contextuel.m_ouv_orn_10.text = "Filtre population courante"
	lm_menu.m_contextuel.m_ouv_orn_10.visible = TRUE
	
	if isnull(ll_test) then
		lm_menu.m_contextuel.m_ouv_orn_10.enabled = FALSE
	else
		lm_menu.m_contextuel.m_ouv_orn_10.enabled = TRUE
	end if
	catch (runtimeerror E)
	end try' rule: #tryCatch.
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
PWBUserObjectParserTest >> testTypeDeclaration2 [
	self parse: 'type st_titre from uo_traitement`st_titre within uo_traitement_cot_prb
int Width=819
string Text="COT_PRB"
end type' rule: #typeDeclaration.
]

{ #category : #tests }
PWBUserObjectParserTest >> testTypeDeclaration3 [
	self parse: 'type ds_zon from nvo_datastore within uo_traitement_cot_app descriptor "pb_nvo" = "true" 
string dataobject = "dw_zonier"
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
PWBUserObjectParserTest >> testVariableDeclarations [
	self
		parse:
			'date id_date_eff_rdg , id_dat_adh_init, id_date_eff, id_date_effet_tarif, id_dat_ff130, id_prm_app_deb'
		rule: #variableDeclarations.
	self
		parse:
			'string picturename[] = {"Custom039!","Custom050!","Custom088!","Custom066!","Custom006!","Custom061!","Custom035!","NotFound!","Custom044!","Custom038!","Start!"}'
		rule: #variableDeclarations.
	self
		parse: 'string is_liste_det_ave[50,2],ls_col_name, ls_sql'
		rule: #variableDeclarations.
	self
		parse:
			'string ls_tab_mois[ ] = {''jan'',''fev'',''mar'',''avr'',''mai'',''jun'',''jul'',''aou'',''sep'',''oct'',''nov'',''dec''}'
		rule: #variableDeclarations
]
