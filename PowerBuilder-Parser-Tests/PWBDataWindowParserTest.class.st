Class {
	#name : #PWBDataWindowParserTest,
	#superclass : #PP2CompositeNodeTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #accessing }
PWBDataWindowParserTest >> parserClass [
	^ PWBDataWindowParser 
]

{ #category : #accessing }
PWBDataWindowParserTest >> testColumn [
	self
		parse: 'column=(type=char(24) updatewhereclause=no name=dct_aoc dbname="dct_aoc" )'
		rule: #column.
	self
		parse: 'column=(type=datetime updatewhereclause=no name=dct_dac dbname="dct_dac" )'
		rule: #column.
	self
		parse:
			'column=(type=decimal(5) update=yes updatewhereclause=yes name=nov_ttc dbname="NOV_TTC" )'
		rule: #column
]

{ #category : #accessing }
PWBDataWindowParserTest >> testColumnGraphicComponent [
	self
		parse:
			'column(band=detail id=4 alignment="1" tabsequence=30 border="0" color="33554432" x="9129" y="0" height="76" width="219" format="[general]" html.valueishtml="0"  name=dct_dss visible="1" edit.limit=0 edit.case=any edit.autoselect=yes edit.autohscroll=yes  font.face="Arial" font.height="-10" font.weight="400"  font.family="2" font.pitch="2" font.charset="0" background.mode="1" background.color="536870912" background.transparency="0" background.gradient.color="8421504" background.gradient.transparency="0" background.gradient.angle="0" background.brushmode="0" background.gradient.repetition.mode="0" background.gradient.repetition.count="0" background.gradient.repetition.length="100" background.gradient.focus="0" background.gradient.scale="100" background.gradient.spread="100" tooltip.backcolor="134217752" tooltip.delay.initial="0" tooltip.delay.visible="32000" tooltip.enabled="0" tooltip.hasclosebutton="0" tooltip.icon="0" tooltip.isbubble="0" tooltip.maxwidth="0" tooltip.textcolor="134217751" tooltip.transparency="0" transparency="0" )'
		rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowParserTest >> testComputeGraphicComponent [
	self
		parse:
			'compute(band=summary alignment="1" expression="sum( anu_ht  for all)"border="0" color="20718592" x="713" y="4" height="76" width="402" format="0.00" html.valueishtml="0"  name=compute_1 visible="1"  font.face="Arial" font.height="-10" font.weight="400"  font.family="2" font.pitch="2" font.charset="1" background.mode="1" background.color="536870912" background.transparency="0" background.gradient.color="8421504" background.gradient.transparency="0" background.gradient.angle="0" background.brushmode="0" background.gradient.repetition.mode="0" background.gradient.repetition.count="0" background.gradient.repetition.length="100" background.gradient.focus="0" background.gradient.scale="100" background.gradient.spread="100" tooltip.backcolor="134217752" tooltip.delay.initial="0" tooltip.delay.visible="32000" tooltip.enabled="0" tooltip.hasclosebutton="0" tooltip.icon="0" tooltip.isbubble="0" tooltip.maxwidth="0" tooltip.textcolor="134217751" tooltip.transparency="0" transparency="0" )'
		rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowParserTest >> testDataWindow [
	self parse: 'datawindow(units=0 timer_interval=0 color=1073741824 brushmode=0 transparency=0 gradient.angle=0 gradient.color=8421504 gradient.focus=0 gradient.repetition.count=0 gradient.repetition.length=100 gradient.repetition.mode=0 gradient.scale=100 gradient.spread=100 gradient.transparency=0 picture.blur=0 picture.clip.bottom=0 picture.clip.left=0 picture.clip.right=0 picture.clip.top=0 picture.mode=0 picture.scale.x=100 picture.scale.y=100 picture.transparency=0 processing=0 HTMLDW=no print.printername="" print.documentname="" print.orientation = 0 print.margin.left = 110 print.margin.right = 110 print.margin.top = 96 print.margin.bottom = 96 print.paper.source = 0 print.paper.size = 0 print.canusedefaultprinter=yes print.prompt=no print.buttons=no print.preview.buttons=no print.cliptext=no print.overrideprintjob=no print.collate=yes print.background=no print.preview.background=no print.preview.outline=yes hidegrayline=no showbackcoloronxp=no picture.file="" )' rule: #dataWindow
]

{ #category : #accessing }
PWBDataWindowParserTest >> testDetail [
	self parse: 'detail(height=92 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )' rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowParserTest >> testExport [
	self parse: 'export.xhtml()' rule: #export.
	self parse: 'export.xml(headgroups="1" includewhitespace="0" metadatatype=0 savemetadata=0 )' rule: #export.
	self parse: 'export.pdf(method=0 distill.custompostscript="0" xslfop.print="0" )' rule: #export
]

{ #category : #accessing }
PWBDataWindowParserTest >> testExpression [
	self parse: '(("al_chq_no", number))' rule: #expression.
	self parse: 'parent.width - 100' rule: #expression.
	self parse: '1 = 1' rule: #expression.
	self parse: 'not isValid(gw_utile)' rule: #expression.
	self parse: '0.00' rule: #expression
]

{ #category : #accessing }
PWBDataWindowParserTest >> testFooter [
	self
		parse:
			'footer(height=0 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
		rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowParserTest >> testGenerators [
	self
		parse:
			'htmlgen(clientevents="1" clientvalidation="1" clientcomputedfields="1" clientformatting="0" clientscriptable="0" generatejavascript="1" encodeselflinkargs="1" netscapelayers="0" pagingmethod=0 generatedddwframes="1" )'
		rule: #generator.
	self parse: 'xhtmlgen()' rule: #generator.
	self parse: 'cssgen(sessionspecific="0" )' rule: #generator.
	self parse: 'xmlgen(inline="0" )' rule: #generator.
	self parse: 'xsltgen()' rule: #generator.
	self parse: 'jsgen()' rule: #generator
]

{ #category : #accessing }
PWBDataWindowParserTest >> testHeader [
	self
		parse:
			'header(height=160 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
		rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowParserTest >> testHtmlTable [
	self parse: 'htmltable(border="1" )' rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowParserTest >> testImport [
	self parse: 'import.xml()' rule: #import
]

{ #category : #accessing }
PWBDataWindowParserTest >> testOption [
	self parse: 'name=dct_aoc' rule: #option.
	self parse: 'type=char(24)' rule: #option.
	self parse: 'color="536870912"' rule: #option.
	self parse: 'edit.limit=0' rule: #option.
	self parse: 'name=compute_1' rule: #option.
	self parse: 'print.orientation = 0' rule: #option.
	self
		parse:
			'arguments=(("al_par_no", number),("as_prt_adn", string),("al_sou_no", number),("al_annee", number),("al_gpp_no", number))'
		rule: #option
]

{ #category : #accessing }
PWBDataWindowParserTest >> testOptions [
	self parse: 'band=detail id=4' rule: #options
]

{ #category : #accessing }
PWBDataWindowParserTest >> testParametrizedType [
	self parse: 'char(24)' rule: #parametrizedType.
	self parse: 'decimal(2)' rule: #parametrizedType
]

{ #category : #accessing }
PWBDataWindowParserTest >> testRectangle [
	self parse: 'rectangle(band=header x="0" y="0" height="176" width="2871"  name=r_1 visible="1" brush.hatch="6" brush.color="28617770" pen.style="0" pen.width="5" pen.color="28617770"  background.mode="2" background.color="12639424" background.transparency="0" background.gradient.color="8421504" background.gradient.transparency="0" background.gradient.angle="0" background.brushmode="0" background.gradient.repetition.mode="0" background.gradient.repetition.count="0" background.gradient.repetition.length="100" background.gradient.focus="0" background.gradient.scale="100" background.gradient.spread="100" tooltip.backcolor="134217752" tooltip.delay.initial="0" tooltip.delay.visible="32000" tooltip.enabled="0" tooltip.hasclosebutton="0" tooltip.icon="0" tooltip.isbubble="0" tooltip.maxwidth="0" tooltip.textcolor="134217751" tooltip.transparency="0" )' rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowParserTest >> testSummary [
	self parse: 'summary(height=84 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )' rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowParserTest >> testTable [
	self parse: 'table(column=(type=char(24) updatewhereclause=no name=dct_aoc dbname="dct_aoc" )
 column=(type=datetime updatewhereclause=no name=dct_dac dbname="dct_dac" )
 column=(type=char(5) updatewhereclause=no name=dct_uti dbname="dct_uti" )
 column=(type=long updatewhereclause=no name=dct_dss dbname="dct_dss" )
 column=(type=long updatewhereclause=no name=dct_lig dbname="dct_lig" )
 column=(type=char(12) updatewhereclause=no name=adh_ctr dbname="adh_ctr" )
 column=(type=char(12) updatewhereclause=no name=dct_adn dbname="dct_adn" )
 column=(type=date updatewhereclause=no name=dct_deb dbname="dct_deb" )
 column=(type=char(2) updatewhereclause=no name=dct_evn dbname="dct_evn" )
 column=(type=decimal(2) updatewhereclause=no name=dct_dbt dbname="dct_dbt" )
 column=(type=decimal(2) updatewhereclause=no name=dct_crt dbname="dct_crt" )
 column=(type=date updatewhereclause=no name=dct_dtc dbname="dct_dtc" )
 column=(type=long updatewhereclause=no name=par_no dbname="par_no" )
 column=(type=long updatewhereclause=no name=dct_par dbname="dct_par" )
 column=(type=long updatewhereclause=no name=prt_no dbname="prt_no" )
 column=(type=long updatewhereclause=no name=org_no dbname="org_no" )
 column=(type=char(12) updatewhereclause=no name=opt_cod dbname="opt_cod" )
 column=(type=date updatewhereclause=no name=dct_fin dbname="dct_fin" )
 column=(type=char(1) updatewhereclause=no name=dct_tlg dbname="dct_tlg" )
 column=(type=long updatewhereclause=no name=chq_no dbname="chq_no" )
 column=(type=decimal(2) updatewhereclause=no name=dct_sld dbname="dct_sld" )
 column=(type=long updatewhereclause=no name=dct_nbe dbname="dct_nbe" )
 column=(type=date updatewhereclause=no name=dct_dev dbname="dct_dev" )
 column=(type=char(2) updatewhereclause=no name=dct_trt dbname="dct_trt" )
 column=(type=long updatewhereclause=no name=obi_no dbname="obi_no" )
 column=(type=long updatewhereclause=no name=rjp_no dbname="rjp_no" )
 column=(type=date updatewhereclause=no name=dct_cre dbname="dct_cre" )
 column=(type=long updatewhereclause=no name=esp_no dbname="esp_no" )
 column=(type=long updatewhereclause=no name=par_cal dbname="par_cal" )
 column=(type=char(12) updatewhereclause=no name=adn_cal dbname="adn_cal" )
 column=(type=char(1) updatewhereclause=no name=dct_rva dbname="dct_rva" )
 column=(type=long updatewhereclause=no name=sou_no dbname="sou_no" )
 column=(type=char(1) updatewhereclause=no name=dct_maj dbname="dct_maj" )
 column=(type=long updatewhereclause=no name=dct_pay dbname="dct_pay" )
 column=(type=date updatewhereclause=no name=dct_ded dbname="dct_ded" )
 column=(type=char(24) updatewhereclause=no name=dct_arc dbname="dct_arc" )
 column=(type=long updatewhereclause=no name=dct_nbp dbname="dct_nbp" )
 column=(type=char(2) updatewhereclause=no name=dct_mdp dbname="dct_mdp" )
 column=(type=char(1) updatewhereclause=no name=dct_cap dbname="dct_cap" )
 column=(type=char(12) updatewhereclause=no name=dct_vax dbname="dct_vax" )
 column=(type=char(12) updatewhereclause=no name=dct_vay dbname="dct_vay" )
 column=(type=date updatewhereclause=no name=dct_dlr dbname="dct_dlr" )
 column=(type=char(1) updatewhereclause=no name=dct_eta dbname="dct_eta" )
 column=(type=decimal(2) updatewhereclause=no name=dct_ht dbname="dct_ht" )
 column=(type=char(12) updatewhereclause=no name=dct_cct dbname="dct_cct" )
 column=(type=char(12) updatewhereclause=no name=dct_fac dbname="dct_fac" )
 column=(type=decimal(2) updatewhereclause=no name=anu_ttc dbname="anu_ttc" )
 column=(type=decimal(2) updatewhereclause=no name=anu_ht dbname="anu_ht" )
 column=(type=char(2) updatewhereclause=no name=dct_frq dbname="dct_frq" )
 column=(type=long updatewhereclause=no name=dct_tax dbname="dct_tax" )
 column=(type=char(2) updatewhereclause=no name=dct_nbm dbname="dct_nbm" )
 column=(type=char(2) updatewhereclause=no name=dct_nep dbname="dct_nep" )
 column=(type=decimal(2) updatewhereclause=no name=dct_pxu dbname="dct_pxu" )
 column=(type=char(2) updatewhereclause=no name=dct_ref dbname="dct_ref" )
 column=(type=char(1) updatewhereclause=no name=dct_gra dbname="dct_gra" )
 column=(type=long updatewhereclause=no name=gpp_no dbname="gpp_no" )
 column=(type=char(10) update=yes updatewhereclause=no name=dct_rem dbname="dct_rem" )
 column=(type=char(1) updatewhereclause=no name=dct_glo dbname="dct_glo" )
 column=(type=long updatewhereclause=no name=cpt_cct dbname="cpt_cct" )
 column=(type=long updatewhereclause=no name=nbs_ech dbname="nbs_ech" )
 column=(type=long updatewhereclause=no name=paa_no dbname="paa_no" )
 column=(type=long updatewhereclause=yes name=ave_no dbname="ave_no" )
  sort="par_cal A " )' rule: #table
]

{ #category : #accessing }
PWBDataWindowParserTest >> testTable2 [
	self parse: 'table(column=(type=char(24) updatewhereclause=no name=dct_aoc dbname="dct_aoc" )
 column=(type=datetime updatewhereclause=no name=dct_dac dbname="dct_dac" )
 column=(type=char(5) updatewhereclause=no name=dct_uti dbname="dct_uti" )
 column=(type=long updatewhereclause=no name=dct_dss dbname="dct_dss" )
 column=(type=long updatewhereclause=no name=dct_lig dbname="dct_lig" )
 column=(type=char(12) updatewhereclause=no name=adh_ctr dbname="adh_ctr" )
 column=(type=char(12) updatewhereclause=no name=dct_adn dbname="dct_adn" )
 column=(type=date updatewhereclause=no name=dct_deb dbname="dct_deb" )
 column=(type=char(2) updatewhereclause=no name=dct_evn dbname="dct_evn" )
 column=(type=decimal(2) updatewhereclause=no name=dct_dbt dbname="dct_dbt" )
 column=(type=decimal(2) updatewhereclause=no name=dct_crt dbname="dct_crt" )
 column=(type=date updatewhereclause=no name=dct_dtc dbname="dct_dtc" )
 column=(type=long updatewhereclause=no name=par_no dbname="par_no" )
 column=(type=long updatewhereclause=no name=dct_par dbname="dct_par" )
 column=(type=long updatewhereclause=no name=prt_no dbname="prt_no" )
 column=(type=long updatewhereclause=no name=org_no dbname="org_no" )
 column=(type=char(12) updatewhereclause=no name=opt_cod dbname="opt_cod" )
 column=(type=date updatewhereclause=no name=dct_fin dbname="dct_fin" )
 column=(type=char(1) updatewhereclause=no name=dct_tlg dbname="dct_tlg" )
 column=(type=long updatewhereclause=no name=chq_no dbname="chq_no" )
 column=(type=decimal(2) updatewhereclause=no name=dct_sld dbname="dct_sld" )
 column=(type=long updatewhereclause=no name=dct_nbe dbname="dct_nbe" )
 column=(type=date updatewhereclause=no name=dct_dev dbname="dct_dev" )
 column=(type=char(2) updatewhereclause=no name=dct_trt dbname="dct_trt" )
 column=(type=long updatewhereclause=no name=obi_no dbname="obi_no" )
 column=(type=long updatewhereclause=no name=rjp_no dbname="rjp_no" )
 column=(type=date updatewhereclause=no name=dct_cre dbname="dct_cre" )
 column=(type=long updatewhereclause=no name=esp_no dbname="esp_no" )
 column=(type=long updatewhereclause=no name=par_cal dbname="par_cal" )
 column=(type=char(12) updatewhereclause=no name=adn_cal dbname="adn_cal" )
 column=(type=char(1) updatewhereclause=no name=dct_rva dbname="dct_rva" )
 column=(type=long updatewhereclause=no name=sou_no dbname="sou_no" )
 column=(type=char(1) updatewhereclause=no name=dct_maj dbname="dct_maj" )
 column=(type=long updatewhereclause=no name=dct_pay dbname="dct_pay" )
 column=(type=date updatewhereclause=no name=dct_ded dbname="dct_ded" )
 column=(type=char(24) updatewhereclause=no name=dct_arc dbname="dct_arc" )
 column=(type=long updatewhereclause=no name=dct_nbp dbname="dct_nbp" )
 column=(type=char(2) updatewhereclause=no name=dct_mdp dbname="dct_mdp" )
 column=(type=char(1) updatewhereclause=no name=dct_cap dbname="dct_cap" )
 column=(type=char(12) updatewhereclause=no name=dct_vax dbname="dct_vax" )
 column=(type=char(12) updatewhereclause=no name=dct_vay dbname="dct_vay" )
 column=(type=date updatewhereclause=no name=dct_dlr dbname="dct_dlr" )
 column=(type=char(1) updatewhereclause=no name=dct_eta dbname="dct_eta" )
 column=(type=decimal(2) updatewhereclause=no name=dct_ht dbname="dct_ht" )
 column=(type=char(12) updatewhereclause=no name=dct_cct dbname="dct_cct" )
 column=(type=char(12) updatewhereclause=no name=dct_fac dbname="dct_fac" )
 column=(type=decimal(2) updatewhereclause=no name=anu_ttc dbname="anu_ttc" )
 column=(type=decimal(2) updatewhereclause=no name=anu_ht dbname="anu_ht" )
 column=(type=char(2) updatewhereclause=no name=dct_frq dbname="dct_frq" )
 column=(type=long updatewhereclause=no name=dct_tax dbname="dct_tax" )
 column=(type=char(2) updatewhereclause=no name=dct_nbm dbname="dct_nbm" )
 column=(type=char(2) updatewhereclause=no name=dct_nep dbname="dct_nep" )
 column=(type=decimal(2) updatewhereclause=no name=dct_pxu dbname="dct_pxu" )
 column=(type=char(2) updatewhereclause=no name=dct_ref dbname="dct_ref" )
 column=(type=char(1) updatewhereclause=no name=dct_gra dbname="dct_gra" )
 column=(type=long updatewhereclause=no name=gpp_no dbname="gpp_no" )
 column=(type=char(10) update=yes updatewhereclause=no name=dct_rem dbname="dct_rem" )
 column=(type=char(1) updatewhereclause=no name=dct_glo dbname="dct_glo" )
 column=(type=long updatewhereclause=no name=cpt_cct dbname="cpt_cct" )
 column=(type=long updatewhereclause=no name=nbs_ech dbname="nbs_ech" )
 column=(type=long updatewhereclause=no name=paa_no dbname="paa_no" )
 column=(type=long updatewhereclause=yes name=ave_no dbname="ave_no" )
  sort="par_cal A " )' rule: #table
]

{ #category : #accessing }
PWBDataWindowParserTest >> testTable3 [
	self parse: 'table(column=(type=char(12) updatewhereclause=yes name=dct_adn dbname="dct.dct_adn" )
 column=(type=long updatewhereclause=yes name=par_cal dbname="dct.par_cal" )
 column=(type=decimal(2) updatewhereclause=yes name=dct_dbt dbname="dct.dct_dbt" )
 column=(type=decimal(2) updatewhereclause=yes name=dct_crt dbname="dct.dct_crt" )
 column=(type=char(2) updatewhereclause=yes name=dct_evn dbname="dct.dct_evn" )
 column=(type=long updatewhereclause=yes name=obi_no dbname="dct.obi_no" )
 column=(type=char(2) updatewhereclause=yes name=dct_mdp dbname="dct.dct_mdp" )
 column=(type=long updatewhereclause=yes name=dct_dss dbname="dct.dct_dss" )
 column=(type=long updatewhereclause=yes name=dct_lig dbname="dct.dct_lig" )
 column=(type=date updatewhereclause=yes name=dct_deb dbname="dct.dct_deb" )
 column=(type=date updatewhereclause=yes name=dct_fin dbname="dct.dct_fin" )
 column=(type=date updatewhereclause=yes name=dct_dtc dbname="dct.dct_dtc" )
 column=(type=char(1) updatewhereclause=yes name=dct_gra dbname="dct.dct_gra" )
 column=(type=date updatewhereclause=yes name=chq_ded dbname="chq.chq_ded" )
 column=(type=char(7) updatewhereclause=yes name=gug_pie dbname="chq.gug_pie" )
 column=(type=date updatewhereclause=yes name=gug_dre dbname="chq.gug_dre" )
 column=(type=long updatewhereclause=yes name=org_no dbname="chq.org_no" )
 retrieve="  SELECT dct.dct_adn,   
         dct.par_cal,   
         dct.dct_dbt,   
         dct.dct_crt,   
         dct.dct_evn,   
         dct.obi_no,   
         dct.dct_mdp,   
         dct.dct_dss,   
         dct.dct_lig,   
         dct.dct_deb,   
         dct.dct_fin,   
         dct.dct_dtc,   
         dct.dct_gra,
			chq.chq_ded,
			chq.gug_pie,
			chq.gug_dre,
			chq.org_no 
    FROM dct, chq
	where   dct.dct_tlg = ''C'' and dct.chq_no = :al_chq_no and chq.chq_no = :al_chq_no
" arguments=(("al_chq_no", number))  sort="dct_evn A dct_dss D dct_lig D " )' rule: #table
]

{ #category : #accessing }
PWBDataWindowParserTest >> testText [
	self parse: 'text(band=header alignment="2" text="Dct Dac" border="0" color="33554432" x="8722" y="0" height="64" width="219" html.valueishtml="0"  name=dct_dac_t visible="1"  font.face="Arial" font.height="-10" font.weight="400"  font.family="2" font.pitch="2" font.charset="0" background.mode="1" background.color="536870912" background.transparency="0" background.gradient.color="8421504" background.gradient.transparency="0" background.gradient.angle="0" background.brushmode="0" background.gradient.repetition.mode="0" background.gradient.repetition.count="0" background.gradient.repetition.length="100" background.gradient.focus="0" background.gradient.scale="100" background.gradient.spread="100" tooltip.backcolor="134217752" tooltip.delay.initial="0" tooltip.delay.visible="32000" tooltip.enabled="0" tooltip.hasclosebutton="0" tooltip.icon="0" tooltip.isbubble="0" tooltip.maxwidth="0" tooltip.textcolor="134217751" tooltip.transparency="0" transparency="0" )' rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowParserTest >> testType [
	self fail: 'this.dw_liste' rule: #type.
	self fail: 'this' rule: #type
]

{ #category : #accessing }
PWBDataWindowParserTest >> testVariable [
	self parse: 'this.dw_liste' rule: #variable
]
