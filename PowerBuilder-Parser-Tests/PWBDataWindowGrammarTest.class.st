Class {
	#name : #PWBDataWindowGrammarTest,
	#superclass : #PP2CompositeNodeTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #accessing }
PWBDataWindowGrammarTest >> parserClass [
	^ PWBDataWindowGrammar 
]

{ #category : #running }
PWBDataWindowGrammarTest >> tearDown [
	super tearDown.
	PP2ParserResource reset.
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testAccess [
	self parse: 'this.dw_liste' rule: #expression
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testBitmap [
	self parse: 'bitmap(band=detail filename="" x="3077" y="124" height="76" width="87" border="2" tooltip.backcolor="134217752" tooltip.delay.initial="0" tooltip.delay.visible="32000" tooltip.enabled="0" tooltip.hasclosebutton="0" tooltip.icon="0" tooltip.isbubble="0" tooltip.maxwidth="0" tooltip.textcolor="134217751" tooltip.transparency="0"  name=p_recherche_adn visible="1" transparency="0" )' rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testButton [
	self parse: 'button(band=detail text="-" enabled=yes action="0" border="0" color="0" x="3511" y="4" height="80" width="101" vtextalign="2" htextalign="0" name=b_supp visible="1" font.face="Arial" font.height="-10" font.weight="400" font.family="2" font.pitch="2" font.charset="0" background.mode="2" background.color="67108864" background.transparency="0" background.gradient.color="8421504" background.gradient.transparency="0" background.gradient.angle="0" background.brushmode="0" background.gradient.repetition.mode="0" background.gradient.repetition.count="0" background.gradient.repetition.length="100" background.gradient.focus="0" background.gradient.scale="100" background.gradient.spread="100" tooltip.backcolor="134217752" tooltip.delay.initial="0" tooltip.delay.visible="32000" tooltip.enabled="0" tooltip.hasclosebutton="0" tooltip.icon="0" tooltip.isbubble="0" tooltip.maxwidth="0" tooltip.textcolor="134217751" tooltip.transparency="0" transparency="0" )' rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testColumn [
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
PWBDataWindowGrammarTest >> testColumnGraphicComponent [
	self
		parse:
			'column(band=detail id=4 alignment="1" tabsequence=30 border="0" color="33554432" x="9129" y="0" height="76" width="219" format="[general]" html.valueishtml="0"  name=dct_dss visible="1" edit.limit=0 edit.case=any edit.autoselect=yes edit.autohscroll=yes  font.face="Arial" font.height="-10" font.weight="400"  font.family="2" font.pitch="2" font.charset="0" background.mode="1" background.color="536870912" background.transparency="0" background.gradient.color="8421504" background.gradient.transparency="0" background.gradient.angle="0" background.brushmode="0" background.gradient.repetition.mode="0" background.gradient.repetition.count="0" background.gradient.repetition.length="100" background.gradient.focus="0" background.gradient.scale="100" background.gradient.spread="100" tooltip.backcolor="134217752" tooltip.delay.initial="0" tooltip.delay.visible="32000" tooltip.enabled="0" tooltip.hasclosebutton="0" tooltip.icon="0" tooltip.isbubble="0" tooltip.maxwidth="0" tooltip.textcolor="134217751" tooltip.transparency="0" transparency="0" )'
		rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testColumnNameOption [
	self parse: 'dbname="dlq.NUM_EQI"' rule: #columnNameOption
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testColumnTypeOption [
	self parse: 'type=char(8)' rule: #columnTypeOption
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testColumnTypeOption1 [
	self parse: 'type=long' rule: #columnTypeOption
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testComputeGraphicComponent [
	self
		parse:
			'compute(band=summary alignment="1" expression="sum( anu_ht  for all)"border="0" color="20718592" x="713" y="4" height="76" width="402" format="0.00" html.valueishtml="0"  name=compute_1 visible="1"  font.face="Arial" font.height="-10" font.weight="400"  font.family="2" font.pitch="2" font.charset="1" background.mode="1" background.color="536870912" background.transparency="0" background.gradient.color="8421504" background.gradient.transparency="0" background.gradient.angle="0" background.brushmode="0" background.gradient.repetition.mode="0" background.gradient.repetition.count="0" background.gradient.repetition.length="100" background.gradient.focus="0" background.gradient.scale="100" background.gradient.spread="100" tooltip.backcolor="134217752" tooltip.delay.initial="0" tooltip.delay.visible="32000" tooltip.enabled="0" tooltip.hasclosebutton="0" tooltip.icon="0" tooltip.isbubble="0" tooltip.maxwidth="0" tooltip.textcolor="134217751" tooltip.transparency="0" transparency="0" )'
		rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testDataComponent [
	self
		parse: 'data( 1001,"CRP", 84438,"CRPS", 309875,"CRCC", 309881,"CRCCS",)'
		rule: #dataComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testDataWindow [
	self parse: 'datawindow(units=0 timer_interval=0 color=1073741824 brushmode=0 transparency=0 gradient.angle=0 gradient.color=8421504 gradient.focus=0 gradient.repetition.count=0 gradient.repetition.length=100 gradient.repetition.mode=0 gradient.scale=100 gradient.spread=100 gradient.transparency=0 picture.blur=0 picture.clip.bottom=0 picture.clip.left=0 picture.clip.right=0 picture.clip.top=0 picture.mode=0 picture.scale.x=100 picture.scale.y=100 picture.transparency=0 processing=0 HTMLDW=no print.printername="" print.documentname="" print.orientation = 0 print.margin.left = 110 print.margin.right = 110 print.margin.top = 96 print.margin.bottom = 96 print.paper.source = 0 print.paper.size = 0 print.canusedefaultprinter=yes print.prompt=no print.buttons=no print.preview.buttons=no print.cliptext=no print.overrideprintjob=no print.collate=yes print.background=no print.preview.background=no print.preview.outline=yes hidegrayline=no showbackcoloronxp=no picture.file="" )' rule: #dataWindow
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testDataWindowFile [
	self parse: 'datawindow(units=0 timer_interval=0 color=1073741824 brushmode=0 transparency=0 )
header(height=80 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" )
summary(height=0 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" )
footer(height=0 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" )
detail(height=92 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" )
table(column=(type=long updatewhereclause=yes name=par_no dbname="PAR_NO" )
 column=(type=char(12) updatewhereclause=yes name=org_cod dbname="ORG_COD" ) )
data( 1001,"CRP", 84438,"CRPS", 309875,"CRCC", 309881,"CRCCS",) 
column(band=detail id=1 alignment="0" tabsequence=0 border="0" color="0" x="9" y="0" height="64" )
text(band=header alignment="0" text="Par No" enabled="0" border="0" color="0" x="5" y="4" height="64" )
column(band=detail id=2 alignment="0" tabsequence=0 border="0" color="0" x="2149" y="0" height="64" )
text(band=header alignment="0" text="Org Cod" enabled="0" border="0" color="0" x="2144" y="4" )
htmltable(border="1" )
htmlgen(clientevents="1" clientvalidation="1" clientcomputedfields="1" clientformatting="0" )
xhtmlgen() cssgen(sessionspecific="0" )
xmlgen(inline="0" )
xsltgen()
jsgen()
export.xml(headgroups="1" includewhitespace="0" metadatatype=0 savemetadata=0 )
import.xml()
export.pdf(method=0 distill.custompostscript="0" xslfop.print="0" nativepdf.customsize=0 )
export.xhtml()
' rule: #dataWindowFile
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testDetail [
	self parse: 'detail(height=92 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )' rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testEllipse [
	self parse: 'ellipse(band=detail x="2350" y="32" height="36" width="41"  name=tem_dtc visible="1~tif(isNull(liq_dtc),0,1)" brush.hatch="6" brush.color="255" pen.style="0" pen.width="5" pen.color="255"  background.mode="2" background.color="0" )' rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testExport [
	self parse: 'export.xhtml()' rule: #export.
	self parse: 'export.xml(headgroups="1" includewhitespace="0" metadatatype=0 savemetadata=0 )' rule: #export.
	self parse: 'export.pdf(method=0 distill.custompostscript="0" xslfop.print="0" )' rule: #export
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testExpression [
	self parse: '(("al_chq_no", number))' rule: #expression.
	self parse: 'parent.width - 100' rule: #expression.
	self parse: '1 = 1' rule: #expression.
	self parse: 'not isValid(gw_utile)' rule: #expression.
	self parse: '0.00' rule: #expression.
	self parse: 'This' rule: #expression.
	self
		parse:
			'gw_utile. wf_cre_rdg(ls_null, il_org_no, "CLO_LET", today(), string(id_date_ref,"YYYY-MM-DD"), string(id_date_ref,"YYYY-MM-DD"), 1)'
		rule: #expression
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testFooter [
	self
		parse:
			'footer(height=0 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
		rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testGenerators [
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
PWBDataWindowGrammarTest >> testGraphGraphicComponent [
	self
		parse:
			'graph(band=background height="276" width="4338" graphtype="12" render3d="0" perspective="2" rotation="-20" color="0" backcolor="80269524" shadecolor="8355711" range= 0 border="3" overlappercent="0" spacing="100" plotnulldata="0" elevation="20" depth="100"x="0" y="0" height="276" width="4338" tooltip.backcolor="134217752" tooltip.delay.initial="0" tooltip.delay.visible="32000" tooltip.enabled="0" tooltip.hasclosebutton="0" tooltip.icon="0" tooltip.isbubble="0" tooltip.maxwidth="0" tooltip.textcolor="134217751" tooltip.transparency="0"  name=gr_2 visible="1"  sizetodisplay=1  series="typ_mem"  category="temps"  values="mem"  title="Mémoire"  title.dispattr.backcolor="553648127"  title.dispattr.alignment="2"  title.dispattr.autosize="1"  title.dispattr.font.charset="0"  title.dispattr.font.escapement="0"  title.dispattr.font.face="Tahoma"  title.dispattr.font.family="2"  title.dispattr.font.height="0"  title.dispattr.font.italic="0"  title.dispattr.font.orientation="0"  title.dispattr.font.pitch="2"  title.dispattr.font.strikethrough="0"  title.dispattr.font.underline="0"  title.dispattr.font.weight="700"  title.dispattr.font.width="0"  title.dispattr.format="[general]"  title.dispattr.textcolor="0"  title.dispattr.displayexpression="title"  legend="0"  legend.dispattr.backcolor="536870912"  legend.dispattr.alignment="0"  legend.dispattr.autosize="1"  legend.dispattr.font.charset="0"  legend.dispattr.font.escapement="0"  legend.dispattr.font.face="Tahoma"  legend.dispattr.font.family="2"  legend.dispattr.font.height="0"  legend.dispattr.font.italic="0"  legend.dispattr.font.orientation="0"  legend.dispattr.font.pitch="2"  legend.dispattr.font.strikethrough="0"  legend.dispattr.font.underline="0"  legend.dispattr.font.weight="400"  legend.dispattr.font.width="0"  legend.dispattr.format="[general]"  legend.dispattr.textcolor="0"  legend.dispattr.displayexpression="series" 

	series.autoscale="1" 

	series.displayeverynlabels="0"  series.droplines="2"  series.frame="1"  series.label=""  series.majordivisions="0"  series.majorgridline="2"  series.majortic="3"  series.maximumvalue="0"  series.minimumvalue="0"  series.minordivisions="0"  series.minorgridline="0"  series.minortic="1"  series.originline="1"  series.primaryline="1"  series.roundto="0"  series.roundtounit="0"  series.scaletype="1"  series.scalevalue="1"  series.secondaryline="0"  series.shadebackedge="0"  series.dispattr.backcolor="536870912"  series.dispattr.alignment="0"  series.dispattr.autosize="1"  series.dispattr.font.charset="0"  series.dispattr.font.escapement="0"  series.dispattr.font.face="Tahoma"  series.dispattr.font.family="2"  series.dispattr.font.height="0"  series.dispattr.font.italic="0"  series.dispattr.font.orientation="0"  series.dispattr.font.pitch="2"  series.dispattr.font.strikethrough="0"  series.dispattr.font.underline="0"  series.dispattr.font.weight="400"  series.dispattr.font.width="0"  series.dispattr.format="[general]"  series.dispattr.textcolor="0"  series.dispattr.displayexpression="series"  series.labeldispattr.backcolor="553648127"  series.labeldispattr.alignment="2"  series.labeldispattr.autosize="1"  series.labeldispattr.font.charset="0"  series.labeldispattr.font.escapement="0"  series.labeldispattr.font.face="Tahoma"  series.labeldispattr.font.family="2"  series.labeldispattr.font.height="0"  series.labeldispattr.font.italic="0"  series.labeldispattr.font.orientation="0"  series.labeldispattr.font.pitch="2"  series.labeldispattr.font.strikethrough="0"  series.labeldispattr.font.underline="0"  series.labeldispattr.font.weight="400"  series.labeldispattr.font.width="0"  series.labeldispattr.format="[general]"  series.labeldispattr.textcolor="0"  series.labeldispattr.displayexpression="seriesaxislabel"  series.sort="1" 

	category.autoscale="1" 

	category.displayeverynlabels="30"  category.droplines="0"  category.frame="1"  category.label="Temps"  category.majordivisions="0"  category.majorgridline="0"  category.majortic="1"  category.maximumvalue="0"  category.minimumvalue="0"  category.minordivisions="0"  category.minorgridline="0"  category.minortic="1"  category.originline="0"  category.primaryline="1"  category.roundto="0"  category.roundtounit="0"  category.scaletype="1"  category.scalevalue="1"  category.secondaryline="0"  category.shadebackedge="1"  category.dispattr.backcolor="556870912"  category.dispattr.alignment="2"  category.dispattr.autosize="1"  category.dispattr.font.charset="0"  category.dispattr.font.escapement="0"  category.dispattr.font.face="Tahoma"  category.dispattr.font.family="2"  category.dispattr.font.height="0"  category.dispattr.font.italic="0"  category.dispattr.font.orientation="0"  category.dispattr.font.pitch="2"  category.dispattr.font.strikethrough="0"  category.dispattr.font.underline="0"  category.dispattr.font.weight="400"  category.dispattr.font.width="0"  category.dispattr.format="[general]"  category.dispattr.textcolor="0"  category.dispattr.displayexpression="category"  category.labeldispattr.backcolor="556870912"  category.labeldispattr.alignment="2"  category.labeldispattr.autosize="1"  category.labeldispattr.font.charset="0"  category.labeldispattr.font.escapement="0"  category.labeldispattr.font.face="Tahoma"  category.labeldispattr.font.family="2"  category.labeldispattr.font.height="0"  category.labeldispattr.font.italic="0"  category.labeldispattr.font.orientation="0"  category.labeldispattr.font.pitch="2"  category.labeldispattr.font.strikethrough="0"  category.labeldispattr.font.underline="0"  category.labeldispattr.font.weight="400"  category.labeldispattr.font.width="0"  category.labeldispattr.format="[general]"  category.labeldispattr.textcolor="0"  category.labeldispattr.displayexpression="categoryaxislabel"  category.sort="1" 

	values.autoscale="1" 

	values.displayeverynlabels="0"  values.droplines="0"  values.frame="1"  values.label="Mo"  values.majordivisions="0"  values.majorgridline="0"  values.majortic="2"  values.maximumvalue="1000"  values.minimumvalue="0"  values.minordivisions="0"  values.minorgridline="0"  values.minortic="1"  values.originline="1"  values.primaryline="1"  values.roundto="0"  values.roundtounit="0"  values.scaletype="1"  values.scalevalue="1"  values.secondaryline="0"  values.shadebackedge="0"  values.dispattr.backcolor="556870912"  values.dispattr.alignment="1"  values.dispattr.autosize="1"  values.dispattr.font.charset="0"  values.dispattr.font.escapement="0"  values.dispattr.font.face="Tahoma"  values.dispattr.font.family="2"  values.dispattr.font.height="0"  values.dispattr.font.italic="0"  values.dispattr.font.orientation="0"  values.dispattr.font.pitch="2"  values.dispattr.font.strikethrough="0"  values.dispattr.font.underline="0"  values.dispattr.font.weight="400"  values.dispattr.font.width="0"  values.dispattr.format="[General]"  values.dispattr.textcolor="0"  values.dispattr.displayexpression="value"  values.labeldispattr.backcolor="553648127"  values.labeldispattr.alignment="2"  values.labeldispattr.autosize="1"  values.labeldispattr.font.charset="0"  values.labeldispattr.font.escapement="900"  values.labeldispattr.font.face="Tahoma"  values.labeldispattr.font.family="2"  values.labeldispattr.font.height="0"  values.labeldispattr.font.italic="0"  values.labeldispattr.font.orientation="900"  values.labeldispattr.font.pitch="2"  values.labeldispattr.font.strikethrough="0"  values.labeldispattr.font.underline="0"  values.labeldispattr.font.weight="400"  values.labeldispattr.font.width="0"  values.labeldispattr.format="[general]"  values.labeldispattr.textcolor="0"  values.labeldispattr.displayexpression="valuesaxislabel" )'
		rule: #graphicComponent
]

{ #category : #tests }
PWBDataWindowGrammarTest >> testGraphicComponent10 [
	self
		parse:
			'ellipse(band=detail x="2350" y="32" height="36" width="41"  name=tem_dtc visible="1~tif(isNull(liq_dtc),0,1)" brush.hatch="6" brush.color="255" pen.style="0" pen.width="5" pen.color="255"  background.mode="2" background.color="0" )'
		rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testGraphicComponent14 [
	
self
				parse: 'detail(height=92 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
				rule: #graphicComponent
]

{ #category : #tests }
PWBDataWindowGrammarTest >> testGraphicComponent15 [
	self
		parse:
			'ole(band=background x="2434" y="8572" height="11350" width="16510" border="0" tooltip.backcolor="0" tooltip.delay.initial="0" tooltip.delay.visible="0" tooltip.enabled="0" tooltip.hasclosebutton="0" tooltip.icon="0" tooltip.isbubble="0" tooltip.maxwidth="0" tooltip.textcolor="0" tooltip.transparency="0"  clientname="untitled"range=0 binaryindex=1 activation=1 linkupdateoptions=0 contentsallowed=2 displaytype=1  name=ole_1 visible="1~t0" )'
		rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testGraphicComponent16 [
	self
		parse:
			'footer(height=0 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
		rule: #graphicComponent
]

{ #category : #tests }
PWBDataWindowGrammarTest >> testGraphicComponent2 [
	self
		parse:
			'summary(height=84 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
		rule: #graphicComponent
]

{ #category : #tests }
PWBDataWindowGrammarTest >> testGraphicComponent3 [
	self
		parse:
			'ellipse(band=detail x="2350" y="32" height="36" width="41"  name=tem_dtc visible="1~tif(isNull(liq_dtc),0,1)" brush.hatch="6" brush.color="255" pen.style="0" pen.width="5" pen.color="255"  background.mode="2" background.color="0" )'
		rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testGraphicComponent5 [
	self
		parse:
			'summary(height=84 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
		rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testGraphicComponent9 [
	self
		parse: 'sparse(names="dossier_interne	no_ligne_dans_dossier")'
		rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testGroup [
	self
		parse:
			'group(level=1 header.height=189 trailer.height=73 by=("dst_cod" ) header.color="553648127" trailer.color="536870912" )'
		rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testHeader [
	self
		parse:
			'header(height=160 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )'
		rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testHtmlTable [
	self parse: 'htmltable(border="1" )' rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testImport [
	self parse: 'import.xml()' rule: #import
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testOption [
	self parse: 'name=dct_aoc' rule: #option.
	self parse: 'type=char(24)' rule: #option.
	self parse: 'color="536870912"' rule: #option.
	self parse: 'edit.limit=0' rule: #option.
	self parse: 'name=compute_1' rule: #option.
	self parse: 'print.orientation = 0' rule: #option.
	self parse: 'height.autosize=yes' rule: #option.
	self parse: 'band=header.1' rule: #option.
	self
		parse:
			'arguments=(("al_par_no", number),("as_prt_adn", string),("al_sou_no", number),("al_annee", number),("al_gpp_no", number))'
		rule: #option.
	self
		parse: 'nest_arguments=((" al_org_no "),(" al_cev_deb "),(" al_cev_fin "))'
		rule: #option
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testOption1 [
	self parse: 'name=date_naissance_t' rule: #option.
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testOptions [
	self parse: 'band=detail id=4' rule: #options
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testParametrizedType [
	self parse: 'char(24)' rule: #parametrizedType.
	self parse: 'decimal(2)' rule: #parametrizedType
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testRectangle [
	self parse: 'rectangle(band=header x="0" y="0" height="176" width="2871"  name=r_1 visible="1" brush.hatch="6" brush.color="28617770" pen.style="0" pen.width="5" pen.color="28617770"  background.mode="2" background.color="12639424" background.transparency="0" background.gradient.color="8421504" background.gradient.transparency="0" background.gradient.angle="0" background.brushmode="0" background.gradient.repetition.mode="0" background.gradient.repetition.count="0" background.gradient.repetition.length="100" background.gradient.focus="0" background.gradient.scale="100" background.gradient.spread="100" tooltip.backcolor="134217752" tooltip.delay.initial="0" tooltip.delay.visible="32000" tooltip.enabled="0" tooltip.hasclosebutton="0" tooltip.icon="0" tooltip.isbubble="0" tooltip.maxwidth="0" tooltip.textcolor="134217751" tooltip.transparency="0" )' rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testReport [
	self parse: 'report(band=detail dataobject="bdwl_iri_510" x="1" y="20" height="137" width="3530" border="0" height.autosize=yes criteria="" nest_arguments=(("ad_seq_num"),("devise")) trail_footer = yes name=dw_det_1 slideup=directlyabove )' rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testRoundrectangleGraphicComponent [
	self
		parse:
			'roundrectangle(band=detail ellipseheight="36" ellipsewidth="41"x="329" y="4" height="208" width="2633"  name=rr_1 visible="1" brush.hatch="6" brush.color="16777215" pen.style="0" pen.width="5" pen.color="20718592"  background.mode="2" background.color="15793151" background.transparency="0" background.gradient.color="8421504" background.gradient.transparency="0" background.gradient.angle="0" background.brushmode="0" background.gradient.repetition.mode="0" background.gradient.repetition.count="0" background.gradient.repetition.length="100" background.gradient.focus="0" background.gradient.scale="100" background.gradient.spread="100" tooltip.backcolor="134217752" tooltip.delay.initial="0" tooltip.delay.visible="32000" tooltip.enabled="0" tooltip.hasclosebutton="0" tooltip.icon="0" tooltip.isbubble="0" tooltip.maxwidth="0" tooltip.textcolor="134217751" tooltip.transparency="0" )'
		rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testSparse [
	self
		parse: 'sparse(names="dossier_interne	no_ligne_dans_dossier")'
		rule: #graphicComponent.
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testString [
	self parse: '''Simple string''' rule: #string.
	self parse: '"Simple string"' rule: #string.
	self parse: '"String with protected ~""' rule: #string.
	self parse: '''String with protected ~''''' rule: #string.
	self parse: '''''' rule: #string.
	self parse: '""' rule: #string.
	self
		parse:
			'''Erreur de paramétrage de cre_dcs. Le chemin de création des fichiers dcs n~''est pas paramétré'''
		rule: #string.
	self parse: '"~~~~~~~~"' rule: #string
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testString2 [
	self
		parse: '"~"Notification pour le centre ~" +  as_seq_num "'
		rule: #string
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testString3 [
	self
		parse: '"<?xml version=~"1.0~" encoding=~"UTF-16LE~" standalone=~"yes~"?><FICHIER><ENTETE><NUM_FICHIER>num_ctr</NUM_FICHIER><DATE_CREATION>dt_crea</DATE_CREATION><VERSION_NORME>norme</VERSION_NORME><NUM_OS_EMETTEUR>num_ose</NUM_OS_EMETTEUR></ENTETE><OFFREUR_SERVICE><LIBELLE_OS>org_org_lib</LIBELLE_OS><NUM_OS/><PERIMETRE_SERVICE><CODE_PERIMETRE/><LIBELLE_PERIMETRE/><CRITERE_REGROUPEMENT><CENTRE_GESTION><REF_INTERNE_CG/><ADRESSE_CG><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_CG><TYPE_GESTIONNAIRE/><GESTIONNAIRE_CONTRAT/><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><HORAIRE/><TARIF/><OUVERTURE/></CENTRE_GESTION><REPRESENTANT_COMMERCIAL/><ENTREPRISE><REF_ENTREPRISE/><NOM_ENTREPRISE/><NUM_CONTRAT_COLLECTIF/><SITE><REF_SITE/><ADRESSE_SITE><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_SITE><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE></SITE></ENTREPRISE><GESTIONNAIRE><REF_GEST/><NOM_GEST/><PRENOM_GEST/><ADRESSE_GEST><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_GEST><IDENTITE_WEB><LOGIN/><PASSWORD/><QUESTION_SECRETE/><REPONSE_SECRETE/></IDENTITE_WEB><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE></GESTIONNAIRE></CRITERE_REGROUPEMENT><CONTRAT __pbband=~"group~"><NUM_CONTRAT>num_contrat</NUM_CONTRAT><REF_NUM_CONTRAT/><REF_ADH_CONTRAT/><ETAT_CONTRAT>etat_ctr</ETAT_CONTRAT><DATE_SOUSCRIPTION>ctr_prt_deb</DATE_SOUSCRIPTION><DATE_IMMAT>dt_immat</DATE_IMMAT><DATE_RENOUVELLEMENT/><DATE_RESILIATION>ctr_prt_rad</DATE_RESILIATION><MOTIF_RESILIATION/><GRP_ASSURE/><DATE_GRP_ASSURE/><ADRESSE_CONTRAT><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_CONTRAT><MEMBRE_CONTRAT __pbband=~"detail~"><SOUSCRIPTEUR>souscripteur</SOUSCRIPTEUR><POSITION>position</POSITION><TYPE_REGIME>type_regime</TYPE_REGIME><DATE_ENTREE>ben_prt_deb</DATE_ENTREE><DATE_INSCRIPTION>ben_first_prt_deb</DATE_INSCRIPTION><INDIVIDU><REF_INTERNE_OS/><NIS/><DATE_NAISSANCE/><RANG_NAISSANCE/><COMMUNE_NAISSANCE/><NOM_PATRONIMIQUE/><NOM_USAGE/><PRENOM/><CODE_SEXE/><PROFESSION><EXERCICE_PROFESSIONNEL/><STATUT/></PROFESSION><IDENTITE_WEB><LOGIN/><PASSWORD/><QUESTION_SECRETE/><REPONSE_SECRETE/></IDENTITE_WEB><AUTRE><TYPE/><VALEUR/></AUTRE><REF_INTERNE_ALMERYS/><DATE_CAL/><TYPE_CAL/></INDIVIDU><ADRESSE_MEMBRE><ADRESSE_AGREGEE><LIGNE1>lrs_lig01</LIGNE1><LIGNE2>lrs_lig02</LIGNE2><LIGNE3>lrs_lig03</LIGNE3><LIGNE4>lrs_lig04</LIGNE4><LIGNE5>lrs_lig05</LIGNE5><LIGNE6>lrs_lig06</LIGNE6><LIGNE7/><DATE_EFFET>lrs_eff</DATE_EFFET></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_MEMBRE><NUM_ADHESION/><AUTONOME>autonome</AUTONOME><MODE_PAIEMENT/><NNI>per_per_ins</NNI><NNI_RATT/><REGIME_SPECIAL/><VIP/><DATE_CERTIFICATION_NNI/><DATE_CERTIFICATION_NNI_RATT/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><DATE_RADIATION>date_radiation</DATE_RADIATION><MOTIF_RADIATION/></MEMBRE_CONTRAT><RATTACHEMENT><REF_OS_RATTACHANT>ref_os_rattachant</REF_OS_RATTACHANT><REF_OS_RATTACHE>ref_os_rattache</REF_OS_RATTACHE><LIEN_JURIDIQUE/></RATTACHEMENT><SERVICE><SERVICE_CV/><SERVICE_CD><REF_INTERNE_OS/><LISTE_DROIT_ACCESS><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCESS><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><ACTIVATION_DESACTIVATION/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><ENVOI/></SERVICE_CD><SERVICE_CR><REF_INTERNE_OS/><LISTE_DROIT_ACCES><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCES><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><ACTIVATION_DESACTIVATION/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><ENVOI/></SERVICE_CR><SERVICE_TP_PEC><BENEFICIAIRE><REF_INTERNE_OS>ref_interne_os</REF_INTERNE_OS><TYPE_BENEF>type_benef</TYPE_BENEF><RO><CODE_GRAND_REGIME/><CODE_GESTION/><TYPE_REGIME/><NNI/><CODE_CAISSE_RO/><CODE_GUICHET/><CODE_ORGANISME/><CENTRE_SS/><CODE_SERVICE_AMO/><SPECIFIQUE_SNCF_CAMAC/><PERMANENT/><DATE_FORMULAIRE_E112/></RO><CONTRAT_RESPONSABLE/><PRODUIT><ORDRE>ordre</ORDRE><OPERATEUR>operateur</OPERATEUR><REFERENCE_PRODUIT>adh_adh_ctr</REFERENCE_PRODUIT><DATE_SOUSCRIPTION/><DATE_ENTREE_PRODUIT>evn_etp_prt_eff</DATE_ENTREE_PRODUIT><DATE_SORTIE_PRODUIT>evn_etp_prt_fin</DATE_SORTIE_PRODUIT><QUALIFICATIF/><CARENCE><REFRENCE_PRODUIT/><IDENT_COLONNE/><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></CARENCE></PRODUIT><STATUT_NOEMISATION><DMD_NOEMISATION><DATE_DEBUT/><DATE_FIN/></DMD_NOEMISATION><REFUS_NOEMISATION/><NOEMISE/><DATE_DEBUT_NOEMISATION/><DATE_FIN_NOEMISATION/></STATUT_NOEMISATION><CODE_MOUVEMENT_CARTE>code_mvt_carte</CODE_MOUVEMENT_CARTE><NUMERO_CARTE/><DROITS/></BENEFICIAIRE><SERVICE_TP><LISTE_DROIT_ACCES><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCES><RIB/><DATE_DEBUT_VALIDITE>ben_prt_deb</DATE_DEBUT_VALIDITE><DATE_FIN_VALIDITE>ben_prt_fin</DATE_FIN_VALIDITE><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><DATE_DEBUT_ATTESTATION/><DATE_FIN_ATTESTATION/><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><ACTIVATION_DESACTIVATION>activation_desactivation</ACTIVATION_DESACTIVATION><ENVOI>envoi</ENVOI></SERVICE_TP><SERVICE_PEC><PEC_HOSPIT><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_HOSPIT><PEC_DENTAIRE><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_DENTAIRE><PEC_OPTIQUE><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_OPTIQUE><PEC_AUDIOPROTHESE><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_AUDIOPROTHESE><COTATION><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></COTATION><LISTE_DROIT_ACCES><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCES><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><ACTIVATION_DESACTIVATION/><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><ENVOI/></SERVICE_PEC></SERVICE_TP_PEC><SERVICE_DECOMPTE/><CARTE_A_PUCE><NUM_LOT_OS/><ENCART_CHIFFRE/><ADRESSE_GROUPEE/><REF_INTERNE_OS_PORTEUR/><REF_INTERNE_OS_PORTE/><ACTIVATION_DESACTIVATION/><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><DATE_REVOCATION/><MOTIF_REVOCATION/><ENVOI/><TYPE_CARTE/></CARTE_A_PUCE><CARTE_VITALE/><SERVICE_RMS/><CARTE_RMS/><CARTE_PAPIER/><MESSAGE/></SERVICE></CONTRAT></PERIMETRE_SERVICE></OFFREUR_SERVICE></FICHIER>"'
		rule: #string
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testSummary [
	self parse: 'summary(height=84 color="536870912" transparency="0" gradient.color="8421504" gradient.transparency="0" gradient.angle="0" brushmode="0" gradient.repetition.mode="0" gradient.repetition.count="0" gradient.repetition.length="100" gradient.focus="0" gradient.scale="100" gradient.spread="100" )' rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testTable [
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
PWBDataWindowGrammarTest >> testTable2 [
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
PWBDataWindowGrammarTest >> testTable3 [
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
PWBDataWindowGrammarTest >> testTable4 [
	self parse: 'table(column=(type=long updatewhereclause=yes name=par_no dbname="evn.PAR_NO" )
 column=(type=long updatewhereclause=yes key=yes name=evn_no dbname="evn.EVN_NO" )
 column=(type=char(7) updatewhereclause=yes name=cmp_cod dbname="evn.CMP_COD" )
 column=(type=date updatewhereclause=yes name=evn_dat dbname="evn.EVN_DAT" )
 column=(type=date update=yes updatewhereclause=yes name=evn_exe dbname="evn.EVN_EXE" )
 column=(type=char(8) updatewhereclause=yes name=titre dbname="TITRE" )
 column=(type=char(10) updatewhereclause=yes name=dateins dbname="DATEINS" )
 column=(type=char(3) updatewhereclause=yes name=oui_non dbname="OUI_NON" )
 column=(type=char(11) updatewhereclause=yes name=montant dbname="MONTANT" )
 retrieve="select evn.par_no, evn.evn_no, evn.cmp_cod, evn.evn_dat, evn.evn_exe, 
''        '' as titre, 
''          '' as dateins, 
''   '' as oui_non, 
''           '' as montant
from evn
where evn.evn_cod = ''EVN_WEB''" update="evn" updatewhere=0 updatekeyinplace=yes )' rule: #table
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testTable5 [
	self parse: 'table(column=(type=char(10) updatewhereclause=yes name=rea_deb dbname="rea_deb" )
 column=(type=char(10) updatewhereclause=yes name=rea_fin dbname="rea_fin" )
 column=(type=char(12) updatewhereclause=yes name=opt_cod dbname="opt_cod" )
 column=(type=char(12) updatewhereclause=yes name=adh_ctr dbname="adh_ctr" )
 column=(type=char(12) updatewhereclause=yes name=cod1 dbname="cod1" )
 column=(type=decimal(2) updatewhereclause=yes name=tau1 dbname="tau1" )
 column=(type=char(5) updatewhereclause=yes name=for1 dbname="for1" )
 column=(type=char(12) updatewhereclause=yes name=cod2 dbname="cod2" )
 column=(type=decimal(2) updatewhereclause=yes name=tau2 dbname="tau2" )
 column=(type=char(5) updatewhereclause=yes name=for2 dbname="for2" )
 column=(type=char(12) updatewhereclause=yes name=cod3 dbname="cod3" )
 column=(type=decimal(2) updatewhereclause=yes name=tau3 dbname="tau3" )
 column=(type=char(5) updatewhereclause=yes name=for3 dbname="for3" )
 column=(type=char(12) updatewhereclause=yes name=cod4 dbname="cod4" )
 column=(type=decimal(2) updatewhereclause=yes name=tau4 dbname="tau4" )
 column=(type=char(5) updatewhereclause=yes name=for4 dbname="for4" )
 column=(type=char(12) updatewhereclause=yes name=cod5 dbname="cod5" )
 column=(type=decimal(2) updatewhereclause=yes name=tau5 dbname="tau5" )
 column=(type=char(5) updatewhereclause=yes name=for5 dbname="for5" )
 column=(type=char(12) updatewhereclause=yes name=cod6 dbname="cod6" )
 column=(type=decimal(2) updatewhereclause=yes name=tau6 dbname="tau6" )
 column=(type=char(5) updatewhereclause=yes name=for6 dbname="for6" )
 column=(type=char(12) updatewhereclause=yes name=cod7 dbname="cod7" )
 column=(type=decimal(2) updatewhereclause=yes name=tau7 dbname="tau7" )
 column=(type=char(5) updatewhereclause=yes name=for7 dbname="for7" )
 column=(type=char(12) updatewhereclause=yes name=cod8 dbname="cod8" )
 column=(type=decimal(2) updatewhereclause=yes name=tau8 dbname="tau8" )
 column=(type=char(5) updatewhereclause=yes name=for8 dbname="for8" )
 )' rule: #table
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testTemplate [
	self parse: 'template=(comment="/0001/ $Nath$ 27/02/2013" encoding="ISO-8859-1" name="template_xml_ges_dv3" xml="<?xml version=~"1.0~" encoding=~"UTF-16LE~" standalone=~"yes~"?><FICHIER><ENTETE><NUM_FICHIER>num_ctr</NUM_FICHIER><DATE_CREATION>dt_crea</DATE_CREATION><VERSION_NORME>norme</VERSION_NORME><NUM_OS_EMETTEUR>num_ose</NUM_OS_EMETTEUR></ENTETE><OFFREUR_SERVICE><LIBELLE_OS>org_org_lib</LIBELLE_OS><NUM_OS/><PERIMETRE_SERVICE><CODE_PERIMETRE/><LIBELLE_PERIMETRE/><CRITERE_REGROUPEMENT><CENTRE_GESTION><REF_INTERNE_CG/><ADRESSE_CG><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_CG><TYPE_GESTIONNAIRE/><GESTIONNAIRE_CONTRAT/><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><HORAIRE/><TARIF/><OUVERTURE/></CENTRE_GESTION><REPRESENTANT_COMMERCIAL/><ENTREPRISE><REF_ENTREPRISE/><NOM_ENTREPRISE/><NUM_CONTRAT_COLLECTIF/><SITE><REF_SITE/><ADRESSE_SITE><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_SITE><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE></SITE></ENTREPRISE><GESTIONNAIRE><REF_GEST/><NOM_GEST/><PRENOM_GEST/><ADRESSE_GEST><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_GEST><IDENTITE_WEB><LOGIN/><PASSWORD/><QUESTION_SECRETE/><REPONSE_SECRETE/></IDENTITE_WEB><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE></GESTIONNAIRE></CRITERE_REGROUPEMENT><CONTRAT __pbband=~"group~"><NUM_CONTRAT>num_contrat</NUM_CONTRAT><REF_NUM_CONTRAT/><REF_ADH_CONTRAT/><ETAT_CONTRAT>etat_ctr</ETAT_CONTRAT><DATE_SOUSCRIPTION>ctr_prt_deb</DATE_SOUSCRIPTION><DATE_IMMAT>dt_immat</DATE_IMMAT><DATE_RENOUVELLEMENT/><DATE_RESILIATION>ctr_prt_rad</DATE_RESILIATION><MOTIF_RESILIATION/><GRP_ASSURE/><DATE_GRP_ASSURE/><ADRESSE_CONTRAT><ADRESSE_AGREGEE><LIGNE1/><LIGNE2/><LIGNE3/><LIGNE4/><LIGNE5/><LIGNE6/><LIGNE7/><DATE_EFFET/></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_CONTRAT><MEMBRE_CONTRAT __pbband=~"detail~"><SOUSCRIPTEUR>souscripteur</SOUSCRIPTEUR><POSITION>position</POSITION><TYPE_REGIME>type_regime</TYPE_REGIME><DATE_ENTREE>ben_prt_deb</DATE_ENTREE><DATE_INSCRIPTION>ben_first_prt_deb</DATE_INSCRIPTION><INDIVIDU><REF_INTERNE_OS/><NIS/><DATE_NAISSANCE/><RANG_NAISSANCE/><COMMUNE_NAISSANCE/><NOM_PATRONIMIQUE/><NOM_USAGE/><PRENOM/><CODE_SEXE/><PROFESSION><EXERCICE_PROFESSIONNEL/><STATUT/></PROFESSION><IDENTITE_WEB><LOGIN/><PASSWORD/><QUESTION_SECRETE/><REPONSE_SECRETE/></IDENTITE_WEB><AUTRE><TYPE/><VALEUR/></AUTRE><REF_INTERNE_ALMERYS/><DATE_CAL/><TYPE_CAL/></INDIVIDU><ADRESSE_MEMBRE><ADRESSE_AGREGEE><LIGNE1>lrs_lig01</LIGNE1><LIGNE2>lrs_lig02</LIGNE2><LIGNE3>lrs_lig03</LIGNE3><LIGNE4>lrs_lig04</LIGNE4><LIGNE5>lrs_lig05</LIGNE5><LIGNE6>lrs_lig06</LIGNE6><LIGNE7/><DATE_EFFET>lrs_eff</DATE_EFFET></ADRESSE_AGREGEE><ADRESSE_DECOMPOSEE><RAISON_SOCIALE/><DENOMINATION_COMMERCIALE/><DESTINATAIRE/><SERVICE_ENTREPRISE/><COMPLEMENT_CONSTRUCTION/><NUM_VOIE/><CODE_BIS/><TYPE_VOIE/><NOM_VOIE/><SERVICE_DISTRIBUTION/><COMPLEMENT_VOIE/><CODE_POSTAL/><COMMUNE/><PAYS/><CODE_CEDEX/><LIBELLE_CEDEX/><DATE_EFFET/></ADRESSE_DECOMPOSEE></ADRESSE_MEMBRE><NUM_ADHESION/><AUTONOME>autonome</AUTONOME><MODE_PAIEMENT/><NNI>per_per_ins</NNI><NNI_RATT/><REGIME_SPECIAL/><VIP/><DATE_CERTIFICATION_NNI/><DATE_CERTIFICATION_NNI_RATT/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><DATE_RADIATION>date_radiation</DATE_RADIATION><MOTIF_RADIATION/></MEMBRE_CONTRAT><RATTACHEMENT><REF_OS_RATTACHANT>ref_os_rattachant</REF_OS_RATTACHANT><REF_OS_RATTACHE>ref_os_rattache</REF_OS_RATTACHE><LIEN_JURIDIQUE/></RATTACHEMENT><SERVICE><SERVICE_CV/><SERVICE_CD><REF_INTERNE_OS/><LISTE_DROIT_ACCESS><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCESS><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><ACTIVATION_DESACTIVATION/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><ENVOI/></SERVICE_CD><SERVICE_CR><REF_INTERNE_OS/><LISTE_DROIT_ACCES><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCES><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><ACTIVATION_DESACTIVATION/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><ENVOI/></SERVICE_CR><SERVICE_TP_PEC><BENEFICIAIRE><REF_INTERNE_OS>ref_interne_os</REF_INTERNE_OS><TYPE_BENEF>type_benef</TYPE_BENEF><RO><CODE_GRAND_REGIME/><CODE_GESTION/><TYPE_REGIME/><NNI/><CODE_CAISSE_RO/><CODE_GUICHET/><CODE_ORGANISME/><CENTRE_SS/><CODE_SERVICE_AMO/><SPECIFIQUE_SNCF_CAMAC/><PERMANENT/><DATE_FORMULAIRE_E112/></RO><CONTRAT_RESPONSABLE/><PRODUIT><ORDRE>ordre</ORDRE><OPERATEUR>operateur</OPERATEUR><REFERENCE_PRODUIT>adh_adh_ctr</REFERENCE_PRODUIT><DATE_SOUSCRIPTION/><DATE_ENTREE_PRODUIT>evn_etp_prt_eff</DATE_ENTREE_PRODUIT><DATE_SORTIE_PRODUIT>evn_etp_prt_fin</DATE_SORTIE_PRODUIT><QUALIFICATIF/><CARENCE><REFRENCE_PRODUIT/><IDENT_COLONNE/><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></CARENCE></PRODUIT><STATUT_NOEMISATION><DMD_NOEMISATION><DATE_DEBUT/><DATE_FIN/></DMD_NOEMISATION><REFUS_NOEMISATION/><NOEMISE/><DATE_DEBUT_NOEMISATION/><DATE_FIN_NOEMISATION/></STATUT_NOEMISATION><CODE_MOUVEMENT_CARTE>code_mvt_carte</CODE_MOUVEMENT_CARTE><NUMERO_CARTE/><DROITS/></BENEFICIAIRE><SERVICE_TP><LISTE_DROIT_ACCES><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCES><RIB/><DATE_DEBUT_VALIDITE>ben_prt_deb</DATE_DEBUT_VALIDITE><DATE_FIN_VALIDITE>ben_prt_fin</DATE_FIN_VALIDITE><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><DATE_DEBUT_ATTESTATION/><DATE_FIN_ATTESTATION/><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><ACTIVATION_DESACTIVATION>activation_desactivation</ACTIVATION_DESACTIVATION><ENVOI>envoi</ENVOI></SERVICE_TP><SERVICE_PEC><PEC_HOSPIT><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_HOSPIT><PEC_DENTAIRE><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_DENTAIRE><PEC_OPTIQUE><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_OPTIQUE><PEC_AUDIOPROTHESE><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></PEC_AUDIOPROTHESE><COTATION><DATE_DEBUT_EFFET/><DATE_FIN_EFFET/></COTATION><LISTE_DROIT_ACCES><REF_OS_ACCEDANT/><REF_OS_ACCEDE/><MOTIF/></LISTE_DROIT_ACCES><JOIGNABILITE><MEDIA/><ADRESSE_MEDIA/><ACTIF/></JOIGNABILITE><ACTIVATION_DESACTIVATION/><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><MOTIF_RESILIATION/><ENVOI/></SERVICE_PEC></SERVICE_TP_PEC><SERVICE_DECOMPTE/><CARTE_A_PUCE><NUM_LOT_OS/><ENCART_CHIFFRE/><ADRESSE_GROUPEE/><REF_INTERNE_OS_PORTEUR/><REF_INTERNE_OS_PORTE/><ACTIVATION_DESACTIVATION/><DATE_DEBUT_VALIDITE/><DATE_FIN_VALIDITE/><DATE_DEBUT_SUSPENSION/><DATE_FIN_SUSPENSION/><DATE_REVOCATION/><MOTIF_REVOCATION/><ENVOI/><TYPE_CARTE/></CARTE_A_PUCE><CARTE_VITALE/><SERVICE_RMS/><CARTE_RMS/><CARTE_PAPIER/><MESSAGE/></SERVICE></CONTRAT></PERIMETRE_SERVICE></OFFREUR_SERVICE></FICHIER>")' rule: #template
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testText [
	self parse: 'text(band=header alignment="2" text="Dct Dac" border="0" color="33554432" x="8722" y="0" height="64" width="219" html.valueishtml="0"  name=dct_dac_t visible="1"  font.face="Arial" font.height="-10" font.weight="400"  font.family="2" font.pitch="2" font.charset="0" background.mode="1" background.color="536870912" background.transparency="0" background.gradient.color="8421504" background.gradient.transparency="0" background.gradient.angle="0" background.brushmode="0" background.gradient.repetition.mode="0" background.gradient.repetition.count="0" background.gradient.repetition.length="100" background.gradient.focus="0" background.gradient.scale="100" background.gradient.spread="100" tooltip.backcolor="134217752" tooltip.delay.initial="0" tooltip.delay.visible="32000" tooltip.enabled="0" tooltip.hasclosebutton="0" tooltip.icon="0" tooltip.isbubble="0" tooltip.maxwidth="0" tooltip.textcolor="134217751" tooltip.transparency="0" transparency="0" )' rule: #graphicComponent
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testType [
	self fail: 'this.dw_liste' rule: #type.
	self fail: 'this' rule: #type.

]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testType2 [

	PP2ParserResource reset.

	self parse: 'blob' rule: #type.
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testType3 [
PP2ParserResource reset.
	self parse: 'character' rule: #type
]

{ #category : #accessing }
PWBDataWindowGrammarTest >> testType4 [
PP2ParserResource reset.
	self parse: 'char(16)' rule: #type.
]
